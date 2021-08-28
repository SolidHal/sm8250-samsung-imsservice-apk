.class public Lcom/sec/internal/ims/aec/util/HttpClient$Response;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/aec/util/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Response"
.end annotation


# instance fields
.field private mBody:[B

.field private mHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStatusCode:I

.field final synthetic this$0:Lcom/sec/internal/ims/aec/util/HttpClient;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/aec/util/HttpClient;ILjava/util/Map;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/aec/util/HttpClient;
    .param p2, "statusCode"    # I
    .param p4, "body"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    .line 242
    .local p3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->this$0:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput p2, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mStatusCode:I

    .line 244
    iput-object p3, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mHeader:Ljava/util/Map;

    .line 245
    iput-object p4, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mBody:[B

    .line 247
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->debugPrint()V

    .line 248
    return-void
.end method

.method private debugPrint()V
    .locals 6

    .line 263
    invoke-static {}, Lcom/sec/internal/ims/aec/util/HttpClient;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mStatusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->this$0:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-static {v2}, Lcom/sec/internal/ims/aec/util/HttpClient;->access$100(Lcom/sec/internal/ims/aec/util/HttpClient;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mHeader:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 266
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mHeader:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 268
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v2, "headerField":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v3, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mHeader:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 273
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_1

    .line 275
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/aec/util/HttpClient;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->this$0:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-static {v5}, Lcom/sec/internal/ims/aec/util/HttpClient;->access$100(Lcom/sec/internal/ims/aec/util/HttpClient;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "headerField":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 279
    :cond_1
    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mBody:[B

    return-object v0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mHeader:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->mStatusCode:I

    return v0
.end method
