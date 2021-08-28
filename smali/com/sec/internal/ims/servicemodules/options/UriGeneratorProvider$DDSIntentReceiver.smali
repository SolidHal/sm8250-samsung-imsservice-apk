.class Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$DDSIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UriGeneratorProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DDSIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$DDSIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$1;

    .line 230
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$DDSIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 233
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DDS change intent received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$DDSIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$502(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 235
    return-void
.end method
