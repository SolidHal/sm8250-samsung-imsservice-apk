.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;
.source "HttpAdapterJibeAndSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    return-void
.end method


# virtual methods
.method public open(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;->configureUrlConnection(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    return v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    new-instance v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    .line 29
    const/4 v0, 0x1

    return v0
.end method
