.class public Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;
.super Ljava/lang/Object;
.source "HttpAdapter.java"

# interfaces
.implements Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/HttpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    .line 135
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 1

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 4

    .line 180
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v3, v3, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->configureUrlConnection(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    new-instance v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 1

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 170
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 152
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 154
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;->setMethod(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->access$002(Lcom/sec/internal/ims/config/adapters/HttpAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 174
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iput-object p1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

    .line 176
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 166
    return-void
.end method
