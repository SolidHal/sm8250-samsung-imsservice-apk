.class public Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;
.super Ljava/lang/Object;
.source "PdnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/PdnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LinkpropertiesChangedEvent"
.end annotation


# instance fields
.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

.field final synthetic this$0:Lcom/sec/internal/ims/core/PdnController;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/PdnController;
    .param p2, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;

    .line 585
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 587
    iput-object p3, p0, Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;->mLinkProperties:Landroid/net/LinkProperties;

    .line 588
    return-void
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;)Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;

    .line 581
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;

    .line 581
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method
