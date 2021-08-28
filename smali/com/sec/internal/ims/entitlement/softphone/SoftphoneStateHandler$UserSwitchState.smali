.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$UserSwitchState;
.super Lcom/sec/internal/helper/State;
.source "SoftphoneStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$UserSwitchState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;
    .param p2, "x1"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;

    .line 850
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$UserSwitchState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 853
    const/4 v0, 0x1

    .line 854
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$UserSwitchState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$UserSwitchState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 855
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3f9

    if-eq v1, v2, :cond_2

    const/16 v2, 0x402

    if-eq v1, v2, :cond_1

    const/16 v2, 0x408

    if-eq v1, v2, :cond_0

    .line 868
    const/4 v0, 0x0

    goto :goto_0

    .line 860
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$UserSwitchState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 861
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$UserSwitchState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v6, 0x0

    aget-wide v6, v1, v6

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    .line 862
    goto :goto_0

    .line 857
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$UserSwitchState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$UserSwitchState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->access$800(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 858
    goto :goto_0

    .line 866
    :cond_2
    nop

    .line 872
    :goto_0
    return v0
.end method
