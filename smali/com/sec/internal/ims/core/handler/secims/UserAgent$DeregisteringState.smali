.class Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;
.super Lcom/sec/internal/helper/State;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeregisteringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    .line 1786
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;

    .line 1786
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1789
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1790
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1794
    const/4 v0, 0x1

    .line 1795
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    const-string v3, "UserAgent"

    if-eq v1, v2, :cond_7

    const/16 v4, 0x320

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v4, :cond_5

    packed-switch v1, :pswitch_data_0

    .line 1858
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1846
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " EVENT_DEREGISTERED_TIMEOUT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1847
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1848
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-interface {v1, v2, v5, v3, v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onDeregistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ZLcom/sec/ims/util/SipError;I)V

    goto/16 :goto_0

    .line 1807
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " EVENT_DEREGISTERED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1815
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    invoke-interface {v1, v3, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->setImsRegistrationState(IZ)V

    .line 1816
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1817
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPdn()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ims"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1818
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1819
    :cond_0
    const/16 v1, 0x258

    .line 1820
    .local v1, "delay":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1821
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v3, Lcom/sec/internal/constants/Mno;->MAGTICOM_GE:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->MEGAFON_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_2

    .line 1823
    :cond_1
    const/16 v1, 0x3e8

    .line 1825
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    int-to-long v5, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1826
    goto/16 :goto_0

    .line 1830
    .end local v1    # "delay":I
    .end local v2    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1831
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v4, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-interface {v1, v3, v5, v4, v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onDeregistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ZLcom/sec/ims/util/SipError;I)V

    .line 1833
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    .line 1834
    goto/16 :goto_0

    .line 1803
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " EVENT_DEREGISTER_COMPELETE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1804
    goto/16 :goto_0

    .line 1853
    :pswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " EVENT_REQUEST_DEREGISTER"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserAgent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " UA is already being deregisted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    goto :goto_0

    .line 1837
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " EVENT_DELAYED_DEREGISTERED"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1839
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1840
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v4, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-interface {v1, v3, v5, v4, v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onDeregistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ZLcom/sec/ims/util/SipError;I)V

    .line 1842
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    .line 1843
    goto :goto_0

    .line 1797
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " EVENT_DELETE_UA"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1798
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->deleteUA(ILandroid/os/Message;)V

    .line 1799
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$900(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    .line 1800
    nop

    .line 1862
    :cond_8
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
