{-# LANGUAGE CPP             #-}
{-# LANGUAGE TemplateHaskell #-}

#if PROFILE_GEN_CODE
{-# OPTIONS_GHC -fplugin=GhcDump.Plugin #-}
#endif

module Test.Record.Size.After.R0060 where

import Data.Aeson (ToJSON(..))

import Data.Record.Generic.JSON
import Data.Record.TH

import Test.Record.Size.Infra

largeRecord defaultLazyOptions (recordOfSize 60)

instance ToJSON R where
  toJSON = gtoJSON