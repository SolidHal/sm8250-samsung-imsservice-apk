.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$IdleState;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;
.source "HttpAdapterCmcc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;

    .line 35
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    return-void
.end method


# virtual methods
.method public open(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$IdleState;->setNetwork(Landroid/net/Network;)V

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;->configureUrlConnection(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;

    new-instance v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$ReadyState;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    .line 43
    const/4 v0, 0x1

    return v0
.end method
