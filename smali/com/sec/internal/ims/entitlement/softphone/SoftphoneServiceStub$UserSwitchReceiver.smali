.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoftphoneServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;
    .param p2, "x1"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;

    .line 139
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 142
    sget-object v0, Lcom/sec/ims/extensions/Extensions$Intent;->ACTION_USER_SWITCHED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v0

    .line 144
    .local v0, "newUserId":I
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserSwitchReceiver(): newUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->access$600(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;I)V

    .line 147
    .end local v0    # "newUserId":I
    :cond_0
    return-void
.end method
