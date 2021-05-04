-- Haskell module generated by the BNF converter

{-# OPTIONS_GHC -fno-warn-unused-matches #-}

module SkelWiadrexLang where

import Prelude (($), Either(..), String, (++), Show, show)
import qualified AbsWiadrexLang

type Err = Either String
type Result = Err String

failure :: Show a => a -> Result
failure x = Left $ "Undefined case: " ++ show x

transIdent :: AbsWiadrexLang.Ident -> Result
transIdent x = case x of
  AbsWiadrexLang.Ident string -> failure x

transProgram :: Show a => AbsWiadrexLang.Program' a -> Result
transProgram x = case x of
  AbsWiadrexLang.PProgram _ inits -> failure x

transArg :: Show a => AbsWiadrexLang.Arg' a -> Result
transArg x = case x of
  AbsWiadrexLang.PArg _ ident type_ -> failure x
  AbsWiadrexLang.PArgVar _ ident type_ -> failure x

transInit :: Show a => AbsWiadrexLang.Init' a -> Result
transInit x = case x of
  AbsWiadrexLang.IFnDef _ ident args type_ block -> failure x
  AbsWiadrexLang.IInit _ ident type_ expr -> failure x

transBlock :: Show a => AbsWiadrexLang.Block' a -> Result
transBlock x = case x of
  AbsWiadrexLang.SBlock _ stmts -> failure x

transStmt :: Show a => AbsWiadrexLang.Stmt' a -> Result
transStmt x = case x of
  AbsWiadrexLang.SEmpty _ -> failure x
  AbsWiadrexLang.SBStmt _ block -> failure x
  AbsWiadrexLang.SInit _ init -> failure x
  AbsWiadrexLang.SAss _ ident expr -> failure x
  AbsWiadrexLang.SIncr _ ident -> failure x
  AbsWiadrexLang.SDecr _ ident -> failure x
  AbsWiadrexLang.SRet _ expr -> failure x
  AbsWiadrexLang.SRetVoid _ -> failure x
  AbsWiadrexLang.SCond _ expr block -> failure x
  AbsWiadrexLang.SCondElse _ expr block1 block2 -> failure x
  AbsWiadrexLang.SWhile _ expr block -> failure x
  AbsWiadrexLang.SExp _ expr -> failure x

transType :: Show a => AbsWiadrexLang.Type' a -> Result
transType x = case x of
  AbsWiadrexLang.TInt _ -> failure x
  AbsWiadrexLang.TString _ -> failure x
  AbsWiadrexLang.TBool _ -> failure x
  AbsWiadrexLang.TVoid _ -> failure x
  AbsWiadrexLang.TRec _ ident -> failure x
  AbsWiadrexLang.TFun _ types type_ -> failure x

transExpr :: Show a => AbsWiadrexLang.Expr' a -> Result
transExpr x = case x of
  AbsWiadrexLang.EVar _ ident -> failure x
  AbsWiadrexLang.ELitInt _ integer -> failure x
  AbsWiadrexLang.ELitTrue _ -> failure x
  AbsWiadrexLang.ELitFalse _ -> failure x
  AbsWiadrexLang.EApp _ ident exprs -> failure x
  AbsWiadrexLang.EString _ string -> failure x
  AbsWiadrexLang.ENeg _ expr -> failure x
  AbsWiadrexLang.ENot _ expr -> failure x
  AbsWiadrexLang.EMul _ expr1 mulop expr2 -> failure x
  AbsWiadrexLang.EAdd _ expr1 addop expr2 -> failure x
  AbsWiadrexLang.ERel _ expr1 relop expr2 -> failure x
  AbsWiadrexLang.EAnd _ expr1 expr2 -> failure x
  AbsWiadrexLang.EOr _ expr1 expr2 -> failure x
  AbsWiadrexLang.ENew _ ident exprs -> failure x
  AbsWiadrexLang.ELambda _ args block -> failure x

transAddOp :: Show a => AbsWiadrexLang.AddOp' a -> Result
transAddOp x = case x of
  AbsWiadrexLang.OPlus _ -> failure x
  AbsWiadrexLang.OMinus _ -> failure x

transMulOp :: Show a => AbsWiadrexLang.MulOp' a -> Result
transMulOp x = case x of
  AbsWiadrexLang.OTimes _ -> failure x
  AbsWiadrexLang.ODiv _ -> failure x
  AbsWiadrexLang.OMod _ -> failure x

transRelOp :: Show a => AbsWiadrexLang.RelOp' a -> Result
transRelOp x = case x of
  AbsWiadrexLang.OLth _ -> failure x
  AbsWiadrexLang.OLE _ -> failure x
  AbsWiadrexLang.OGth _ -> failure x
  AbsWiadrexLang.OGE _ -> failure x
  AbsWiadrexLang.OEq _ -> failure x
  AbsWiadrexLang.ONe _ -> failure x
