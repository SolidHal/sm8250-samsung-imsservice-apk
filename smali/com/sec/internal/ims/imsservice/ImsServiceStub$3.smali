.class Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerPackageManagerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 352
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 355
    const-string v0, ""

    .line 356
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package:"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 359
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "packageStatus":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", packageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v2, "com.samsung.ims.smk"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    const v5, -0x304ed112

    const/4 v6, -0x1

    if-eqz v2, :cond_5

    .line 364
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-eq v2, v5, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :goto_0
    move v3, v6

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    .line 370
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$600(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "ver":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$700(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 372
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$800(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    .line 375
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$900(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)V

    .line 376
    nop

    .line 379
    .end local v2    # "ver":Ljava/lang/String;
    :goto_2
    goto :goto_5

    .line 381
    :cond_5
    const-string v2, "com.samsung.android.messaging"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 383
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-eq v2, v5, :cond_7

    :cond_6
    goto :goto_3

    :cond_7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :goto_3
    move v3, v6

    :goto_4
    if-eqz v3, :cond_8

    goto :goto_5

    .line 385
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$200(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v2

    .line 386
    .local v2, "cdm":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    if-eqz v2, :cond_9

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 387
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "registerPackageManagerReceiver: notify to CapaModule"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-interface {v2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->onPackageUpdated(Ljava/lang/String;)V

    goto :goto_5

    .line 390
    :cond_9
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "registerPackageManagerReceiver:CapaModule not available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v2    # "cdm":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    :cond_a
    :goto_5
    return-void
.end method
