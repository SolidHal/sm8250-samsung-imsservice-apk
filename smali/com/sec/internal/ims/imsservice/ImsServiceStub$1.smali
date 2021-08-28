.class Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;
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

    .line 200
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 203
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    const/4 v0, 0x0

    .line 206
    .local v0, "currentPackage":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$000(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get currentPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange: MessageApplication is changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz v0, :cond_2

    .line 212
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$200(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v1

    .line 213
    .local v1, "imModule":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v1, :cond_0

    .line 214
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->handleEventDefaultAppChanged()V

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$300(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/config/ConfigModule;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$300(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/config/ConfigModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/ConfigModule;->onDefaultSmsPackageChanged()V

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->access$200(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    move-result-object v2

    .line 221
    .local v2, "sms":Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;
    if-eqz v2, :cond_2

    .line 222
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->handleEventDefaultAppChanged()V

    .line 226
    .end local v0    # "currentPackage":Ljava/lang/String;
    .end local v1    # "imModule":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    .end local v2    # "sms":Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;
    :cond_2
    return-void
.end method
