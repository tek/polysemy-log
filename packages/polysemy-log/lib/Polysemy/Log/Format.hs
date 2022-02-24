-- |Description: Formatting helpers
module Polysemy.Log.Format where

import qualified Data.Text as Text
import GHC.Exception (CallStack, SrcLoc (..), getCallStack)
import System.Console.ANSI (Color (..), ColorIntensity (Dull), ConsoleLayer (Foreground), SGR (..), setSGRCode)

import Polysemy.Log.Data.LogEntry (LogEntry (LogEntry))
import qualified Polysemy.Log.Data.LogMessage as LogMessage
import Polysemy.Log.Data.LogMessage (LogMessage (LogMessage))
import Polysemy.Log.Data.Severity (Severity (..))

-- |Create a colored tag with the format @"[tag]"@ for a 'Severity' value.
formatSeverity :: Severity -> Text
formatSeverity = \case
  Trace -> "[trace]"
  Debug -> color Green "[debug]"
  Info -> color Blue "[info] "
  Warn -> color Yellow "[warn] "
  Error -> color Red "[error]"
  Crit -> color Magenta "[crit] "
 where
   color c txt =
     toText (setSGRCode [SetColor Foreground Dull c]) <>
     txt <>
     toText (setSGRCode [Reset])

-- |Turn a module string like @Foo.Bar.Baz@ into an abbreviated @F.B.Baz@.
shortModule :: Text -> Text
shortModule =
  spin . Text.splitOn "."
  where
    spin = \case
      [] -> ""
      [m] -> m
      h : t -> Text.take 1 h <> "." <> spin t

-- |Format a call stack's top element as @"F.B.Baz#32"@ with the line number.
formatCaller :: CallStack -> Text
formatCaller =
  maybe "<unknown loc>" format . listToMaybe . getCallStack
  where
    format (_, SrcLoc {..}) =
      shortModule (toText srcLocModule) <> "#" <> show srcLocStartLine

-- |Default formatter for the default message type.
formatLogEntry :: LogEntry LogMessage -> Text
formatLogEntry (LogEntry LogMessage {..} _ source) =
  formatSeverity severity <> " [" <> formatCaller source <> "] " <> message
