.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;
.source "HttpAdapterVzwMvs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    .line 41
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    return-void
.end method


# virtual methods
.method public open(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mPhoneId:I

    const-string/jumbo v2, "open urlConnection"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->configureUrlConnection(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    new-instance v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 54
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    iput-object p1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mNetwork:Landroid/net/Network;

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mNetwork:Landroid/net/Network;

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mPhoneId:I

    const-string/jumbo v2, "setNetwork: reset mSocketFactory"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzwMvs;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 60
    :cond_0
    return-void
.end method
