.class Lcom/sec/internal/ims/core/GeolocationController$IntentListener;
.super Ljava/lang/Object;
.source "GeolocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/GeolocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentListener"
.end annotation


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/sec/internal/ims/core/GeolocationController;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/GeolocationController;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    new-instance p1, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;-><init>(Lcom/sec/internal/ims/core/GeolocationController$IntentListener;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/GeolocationController;Lcom/sec/internal/ims/core/GeolocationController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/GeolocationController$1;

    .line 593
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;-><init>(Lcom/sec/internal/ims/core/GeolocationController;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/GeolocationController$IntentListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    .line 593
    invoke-direct {p0}, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 595
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 596
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.epdg.EPDG_SSID_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 597
    const-string v1, "com.sec.internal.ims.imsservice.periodic_lu"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 598
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v1}, Lcom/sec/internal/ims/core/GeolocationController;->access$600(Lcom/sec/internal/ims/core/GeolocationController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 600
    return-void
.end method
