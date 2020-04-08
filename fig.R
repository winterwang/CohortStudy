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



# mermaid("
# sequenceDiagram
#     Exposure ==> Outcome
#     end
#                 ")
