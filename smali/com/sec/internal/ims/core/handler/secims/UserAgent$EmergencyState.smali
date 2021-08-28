.class Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;
.super Lcom/sec/internal/helper/State;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    .line 1918
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;

    .line 1918
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1921
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1922
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .line 1926
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 1929
    .local v2, "retVal":Z
    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    const-string v5, "UserAgent"

    if-eq v3, v4, :cond_a

    const/16 v4, 0xa

    if-eq v3, v4, :cond_9

    const/16 v4, 0x17

    const-string/jumbo v5, "result"

    const-string/jumbo v6, "sessionId"

    if-eq v3, v4, :cond_8

    const/16 v4, 0x25

    if-eq v3, v4, :cond_7

    const/16 v4, 0x33

    if-eq v3, v4, :cond_6

    const/16 v4, 0x66

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_4

    const/16 v4, 0xe

    if-eq v3, v4, :cond_3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_2

    const/16 v4, 0x6d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 2024
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2010
    :pswitch_0
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 2011
    .local v3, "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2012
    const-string/jumbo v6, "reason"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2011
    invoke-interface {v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->rejectModifyCallType(II)V

    .line 2013
    goto/16 :goto_0

    .line 2003
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 2004
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v7

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2005
    const-string/jumbo v4, "reqType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v4, "curType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 2006
    const-string/jumbo v4, "repType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v4, "cmcCallTime"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2004
    invoke-interface/range {v7 .. v12}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->replyModifyCallType(IIIILjava/lang/String;)V

    .line 2007
    goto/16 :goto_0

    .line 1997
    .end local v3    # "bundle":Landroid/os/Bundle;
    :pswitch_2
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1998
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1999
    const-string v6, "oldType"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "newType"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1998
    invoke-interface {v4, v5, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->modifyCallType(III)V

    .line 2000
    goto/16 :goto_0

    .line 1987
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->stopLocalRingBackTone(I)V

    .line 1988
    goto/16 :goto_0

    .line 1981
    :cond_1
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1982
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v6

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v7

    const-string/jumbo v4, "streamType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v4, "volume"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1983
    const-string/jumbo v4, "toneType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/os/Message;

    .line 1982
    invoke-interface/range {v6 .. v11}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->startLocalRingBackTone(IIIILandroid/os/Message;)V

    .line 1984
    goto/16 :goto_0

    .line 1957
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_2
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v4

    iget v5, v1, Landroid/os/Message;->arg1:I

    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->endCall(IILcom/sec/internal/constants/ims/SipReason;Landroid/os/Message;)V

    .line 1958
    goto/16 :goto_0

    .line 1940
    :cond_3
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1941
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v6

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v7

    const-string v4, "destUri"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1942
    const-string/jumbo v4, "origUri"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1943
    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1944
    const-string v4, "dispName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "dialedNumber"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1945
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPcscfIp()Ljava/lang/String;

    move-result-object v13

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPcscfPort()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1946
    const-string v4, "PEmergencyInfoOfAtt"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    .line 1947
    const-string v4, "alertInfo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1948
    const-string v4, "isLteEpsOnlyAttached"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 1949
    const-string/jumbo v4, "p2p"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    .line 1950
    const-string v4, "cmcBoundSessionId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1951
    const-string v4, "composer_data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v23

    .line 1952
    const-string/jumbo v4, "replaceCallId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1953
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object/from16 v25, v4

    check-cast v25, Landroid/os/Message;

    .line 1941
    invoke-interface/range {v6 .. v25}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->makeCall(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;Landroid/os/Message;)V

    .line 1954
    goto/16 :goto_0

    .line 1975
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1976
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    const-string/jumbo v6, "target"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1977
    const-string v7, "event"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "eventType"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1976
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendMediaEvent(IIII)V

    .line 1978
    goto/16 :goto_0

    .line 1961
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_5
    iget v3, v1, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    .line 1962
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1963
    .local v3, "address":Ljava/lang/String;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1800(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ILjava/lang/String;)V

    .line 1964
    .end local v3    # "address":Ljava/lang/String;
    goto/16 :goto_0

    .line 1991
    :cond_6
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1992
    .local v3, "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1993
    const-string/jumbo v7, "text"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "len"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1992
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendText(IILjava/lang/String;I)V

    .line 1994
    goto/16 :goto_0

    .line 2016
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_7
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 2017
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v7

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2018
    const-string v4, "action"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 2019
    const-string v4, "codecType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 2020
    const-string v4, "cause"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v4, "reasonText"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2017
    invoke-interface/range {v7 .. v12}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->updateCall(IIIILjava/lang/String;)V

    .line 2021
    goto :goto_0

    .line 1968
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_8
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1969
    .restart local v3    # "bundle":Landroid/os/Bundle;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$500(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v7

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v8

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1970
    const-string v4, "code"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v4, "mode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v4, "operation"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1971
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/os/Message;

    .line 1969
    invoke-interface/range {v7 .. v13}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->handleDtmf(IIIIILandroid/os/Message;)V

    .line 1972
    goto :goto_0

    .line 1935
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_9
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    const-string v4, "deregister is not required for emergency call. delete UA."

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1936
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    .line 1937
    goto :goto_0

    .line 1931
    :cond_a
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    const-string/jumbo v4, "register is not required for emergency call."

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1932
    nop

    .line 2028
    :cond_b
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
