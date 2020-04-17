library(DiagrammeR)
mermaid("
graph LR
  A((Population))==>B[People <br> without<br> disease]
  B==>C[Exposed]
  B==>D[Not Exposed]
  C==>E[Disease]
  C==>F[No Disease]
  D==>G[Disease]
  D==>H[No Disease]
", width = 1000, height = 500)


mermaid(
  "
  graph LR
  A[Exposure <br> Briefcase to work] -.X.-> B[Outcome <br> All cause mortality]
  A[Exposure <br> Briefcase to work] --> C[Confounder <br> SES]
  C[Confounder <br> SES] --> A[Exposure <br> Briefcase to work]
  C --> B
  ", width = 1000, height = 500
)


text <- glue::glue('Exposure: 
                  Briefcase to work')

text1 <- glue::glue('Outcome: 
                  All cause mortality')

text2 <- glue::glue('Confounder:
                    SES')

grViz("
digraph causal {

  # nodes [fontname = Sans]
  A [label = '@@1']
  B [label = '@@2']
  C [label = '@@3']
  
  # Edge
  rankdir = LR
  A -> B
  A -> C
  C -> B
  C -> A
 
}      
 [1]: text
 [2]: text1
 [3]: text2
      ")


mermaid("
sequenceDiagram
    participant クライアント
    participant sv as サーバー
    participant db as データベース

    # データ取得コード
    クライアント ->> sv : 要求
    sv ->> db : 発行
    db -->> sv : 結果
    sv -->> クライアント : 結果

    alt 正常終了
        Note over クライアント : 取得データ表示
    else エラー
        Note over クライアント : エラー表示
    end")


mermaid("
sequenceDiagram
    Zero ->> Two : 2 years  
    Zero ->> One.half : 1.5 years
end")
