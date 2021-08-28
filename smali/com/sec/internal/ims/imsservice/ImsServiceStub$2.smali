.class Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerFactoryResetReceiver()V
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

    .line 311
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 314
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "received intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x427a9bd1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x1ff1c7b7

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_3

    .line 323
    :cond_3
    const-string/jumbo v0, "subId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 324
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSlotId(I)I

    move-result v0

    .line 326
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$400(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V

    .line 327
    .end local v0    # "phoneId":I
    goto :goto_3

    .line 317
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "phoneId":I
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-virtual {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 318
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$400(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 320
    .end local v0    # "phoneId":I
    :cond_5
    nop

    .line 333
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$500(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/WfcEpdgManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$500(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/WfcEpdgManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->onResetSetting(Landroid/content/Intent;)V

    .line 336
    :cond_7
    return-void
.end method
