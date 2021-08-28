.class Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;
.super Ljava/lang/Object;
.source "SmsServiceModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onMessagingAppPackageReplaced()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 1541
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1544
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1300(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1545
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1300(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->getMessagingAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1402(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Ljava/lang/String;)Ljava/lang/String;

    .line 1546
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessagingAppPackageReplaced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1400(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1500(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1549
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1600(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1550
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v3, "defaultmsgappinuse"

    invoke-static {v2, v3, v0}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1702(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Z)Z

    .line 1551
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1700(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1552
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1800(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1400(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->setMsgAppInfoToSipUa(ILjava/lang/String;)V

    goto :goto_2

    .line 1554
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->access$1800(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->setMsgAppInfoToSipUa(ILjava/lang/String;)V

    .line 1548
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1559
    .end local v0    # "phoneId":I
    :cond_3
    return-void
.end method
