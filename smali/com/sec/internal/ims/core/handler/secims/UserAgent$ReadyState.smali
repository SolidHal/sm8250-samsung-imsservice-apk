.class Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;
.super Lcom/sec/internal/helper/State;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;

    .line 1008
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1011
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1012
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 1016
    const/4 v0, 0x1

    .line 1018
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const-string v3, "]"

    const-string v4, "UserAgent["

    if-eq v1, v2, :cond_d

    const/16 v2, 0xc

    if-eq v1, v2, :cond_c

    const/16 v2, 0xf

    if-eq v1, v2, :cond_b

    const/16 v2, 0x22

    if-eq v1, v2, :cond_9

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_8

    const/16 v2, 0x32

    if-eq v1, v2, :cond_7

    const/16 v2, 0x34

    if-eq v1, v2, :cond_6

    const/16 v2, 0x64

    if-eq v1, v2, :cond_5

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    const/4 v5, 0x5

    if-eq v1, v2, :cond_3

    if-eq v1, v5, :cond_5

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 1109
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1099
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " received in  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1100
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " This shouldn\'t be handled here - defer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1099
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deferMessage(Landroid/os/Message;)V

    .line 1102
    goto/16 :goto_0

    .line 1038
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendAuthResponse(IILjava/lang/String;)V

    .line 1039
    goto/16 :goto_0

    .line 1025
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    .local v1, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getServiceList()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1027
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPcscfIp()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1028
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPcscfPort()I

    move-result v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRegExpires()I

    move-result v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1029
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getLinkedImpuList()Ljava/util/List;

    move-result-object v8

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1030
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v9

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;

    move-result-object v10

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1031
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getAccessToken()Ljava/lang/String;

    move-result-object v11

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getAuthServerUrl()Ljava/lang/String;

    move-result-object v12

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v13, 0x7

    .line 1032
    invoke-virtual {v7, v13}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 1027
    move-object v7, v1

    invoke-interface/range {v2 .. v13}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->register(ILjava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1034
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$900(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    .line 1035
    goto/16 :goto_0

    .line 1085
    .end local v1    # "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->deleteUA(ILandroid/os/Message;)V

    .line 1086
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$900(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    .line 1087
    goto/16 :goto_0

    .line 1070
    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1071
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    const-string v4, "mode"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1072
    const-string/jumbo v5, "result"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 1071
    invoke-interface {v2, v3, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->updateAudioInterface(ILjava/lang/String;Landroid/os/Message;)V

    .line 1073
    goto/16 :goto_0

    .line 1081
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$900(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    .line 1082
    goto/16 :goto_0

    .line 1062
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->updateTimeInPlani(IJ)V

    .line 1063
    goto/16 :goto_0

    .line 1066
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->updateRat(II)V

    .line 1067
    goto/16 :goto_0

    .line 1095
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->updateGeolocation(ILcom/sec/internal/constants/ims/gls/LocationInfo;)V

    .line 1096
    goto/16 :goto_0

    .line 1044
    :cond_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1046
    .local v1, "paniList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$600(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$600(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1047
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1048
    .local v2, "cv":Landroid/content/ContentValues;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "real_pani"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object v5, v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    const-string v6, "Debug_config"

    invoke-static {v4, v5, v6, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->put(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1051
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object v5, v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    const-string v7, "fake_pani"

    const-string v8, ""

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1053
    .local v4, "fakePani":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1054
    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1058
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "fakePani":Ljava/lang/String;
    :cond_a
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->updatePani(ILjava/util/List;)V

    .line 1059
    goto :goto_0

    .line 1105
    .end local v1    # "paniList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->endCall(IILcom/sec/internal/constants/ims/SipReason;Landroid/os/Message;)V

    .line 1106
    goto :goto_0

    .line 1076
    :cond_c
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->READY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$900(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    .line 1077
    goto :goto_0

    .line 1021
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent is already created."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    nop

    .line 1113
    :goto_0
    return v0
.end method
