.class public Lcom/sec/internal/helper/httpclient/HttpQueryParams;
.super Ljava/lang/Object;
.source "HttpQueryParams.java"


# instance fields
.field private mParams:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParamsEncoded:Z


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;Z)V
    .locals 1
    .param p2, "encoded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 12
    .local p1, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->mParams:Ljava/util/LinkedHashMap;

    .line 13
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->mParams:Ljava/util/LinkedHashMap;

    .line 14
    iput-boolean p2, p0, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->mParamsEncoded:Z

    .line 15
    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->mParams:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public isEncoded()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->mParamsEncoded:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
