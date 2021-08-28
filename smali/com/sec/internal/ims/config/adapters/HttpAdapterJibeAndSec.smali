.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter;
.source "HttpAdapterJibeAndSec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;,
        Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 18
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    .line 19
    new-instance v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    .line 20
    return-void
.end method
