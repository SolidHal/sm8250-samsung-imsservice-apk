.class Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/ImsServiceStub;
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

    .line 2008
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2011
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2012
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2013
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_USER_UNLOCKED received"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$1002(Z)Z

    .line 2015
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$1100(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/RegistrationManagerBase;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2016
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$1300()V

    .line 2017
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$1100(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/RegistrationManagerBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->bootCompleted()V

    .line 2019
    :cond_0
    const/4 v1, 0x0

    const-string/jumbo v2, "ro.product.first_api_level"

    invoke-static {v2, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 2020
    invoke-static {}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->unlockCe()V

    .line 2021
    invoke-static {p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->migrateToCeStorage(Landroid/content/Context;)V

    .line 2023
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.internal.ims.entitlement.DEVICE_READY_AFTER_BOOTUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2025
    :cond_2
    return-void
.end method
