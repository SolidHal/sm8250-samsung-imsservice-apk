.class Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UriGeneratorProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$1;

    .line 183
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 186
    const-string/jumbo v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "iccState":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sim state intent received - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$500(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    const-string v2, "LOADED"

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Update mSimManager when iccState is \'LOADED\' "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$502(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 201
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$500(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$600(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$500(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$500(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    .line 208
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$500(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->access$700(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_4
    return-void
.end method
