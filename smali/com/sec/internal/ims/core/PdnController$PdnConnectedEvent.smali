.class public Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;
.super Ljava/lang/Object;
.source "PdnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/PdnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PdnConnectedEvent"
.end annotation


# instance fields
.field private mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

.field private mNetwork:Landroid/net/Network;

.field final synthetic this$0:Lcom/sec/internal/ims/core/PdnController;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/Network;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/PdnController;
    .param p2, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .param p3, "network"    # Landroid/net/Network;

    .line 575
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 577
    iput-object p3, p0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->mNetwork:Landroid/net/Network;

    .line 578
    return-void
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;)Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;

    .line 571
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;

    .line 571
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->mNetwork:Landroid/net/Network;

    return-object v0
.end method
