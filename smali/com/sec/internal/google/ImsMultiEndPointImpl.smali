.class public Lcom/sec/internal/google/ImsMultiEndPointImpl;
.super Lcom/android/ims/internal/IImsMultiEndpoint$Stub;
.source "ImsMultiEndPointImpl.java"


# instance fields
.field private mDialogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation
.end field

.field private mImsMultiEndpointListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

.field private mPhoneId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 30
    invoke-direct {p0}, Lcom/android/ims/internal/IImsMultiEndpoint$Stub;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mImsMultiEndpointListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mPhoneId:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    .line 31
    iput p1, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mPhoneId:I

    .line 32
    return-void
.end method

.method private getOirExtraFromDialingNumber(Ljava/lang/String;)I
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "unknown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x3

    return v0

    .line 137
    :cond_0
    const-string v0, "RESTRICTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "anonymous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    const-string v0, "Coin line/payphone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    const/4 v0, 0x4

    return v0

    .line 143
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 139
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getExternalCallStateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    return-object v0
.end method

.method public getImsExternalCallStateListener()Lcom/android/ims/internal/IImsExternalCallStateListener;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mImsMultiEndpointListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    return-object v0
.end method

.method public requestImsExternalCallStateInfo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mImsMultiEndpointListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    iget-object v1, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsExternalCallStateListener;->onImsExternalCallStateUpdate(Ljava/util/List;)V

    .line 54
    return-void
.end method

.method public setDialogInfo(Lcom/sec/ims/DialogEvent;I)V
    .locals 18
    .param p1, "de"    # Lcom/sec/ims/DialogEvent;
    .param p2, "cmcType"    # I

    .line 57
    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v0, v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    new-instance v10, Landroid/telephony/ims/ImsExternalCallState;

    const/4 v4, -0x1

    const-string v3, ""

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void

    .line 64
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/sec/ims/Dialog;

    .line 65
    .local v5, "info":Lcom/sec/ims/Dialog;
    if-nez v5, :cond_1

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    iget v0, v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 70
    .local v6, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v7, -0x1

    .line 71
    .local v7, "dialogId":I
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v6, v0, :cond_2

    .line 72
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->getIdForString(Ljava/lang/String;)I

    move-result v0

    .end local v7    # "dialogId":I
    .local v0, "dialogId":I
    goto :goto_1

    .line 75
    .end local v0    # "dialogId":I
    .restart local v7    # "dialogId":I
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v7    # "dialogId":I
    .restart local v0    # "dialogId":I
    nop

    .line 82
    :goto_1
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getRemoteUri()Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "remoteUri":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 86
    goto :goto_0

    .line 89
    :cond_3
    const-string/jumbo v9, "tel:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 91
    const-string/jumbo v10, "sip:"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 95
    :cond_4
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getRemoteDispName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 96
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";displayName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getRemoteDispName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 100
    :cond_5
    const/4 v9, 0x2

    if-eq v2, v9, :cond_7

    const/4 v9, 0x4

    if-eq v2, v9, :cond_7

    const/16 v9, 0x8

    if-ne v2, v9, :cond_6

    goto :goto_2

    :cond_6
    move-object v4, v7

    goto :goto_3

    .line 103
    :cond_7
    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, "tmpRemoteUri":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 105
    invoke-direct {v1, v8}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->getOirExtraFromDialingNumber(Ljava/lang/String;)I

    move-result v9

    .line 106
    .local v9, "oir":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";oir="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 107
    const-string v10, "Conference call"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 108
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";cmc_pd_state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 111
    .end local v9    # "oir":I
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";cmc_type="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 114
    .end local v7    # "remoteUri":Ljava/lang/String;
    .end local v8    # "tmpRemoteUri":Ljava/lang/String;
    .local v4, "remoteUri":Ljava/lang/String;
    :goto_3
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 117
    .local v14, "address":Landroid/net/Uri;
    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v7

    invoke-static {v7}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v15

    .line 118
    .local v15, "callType":I
    iget-object v13, v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    new-instance v12, Landroid/telephony/ims/ImsExternalCallState;

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->isPullAvailable()Z

    move-result v10

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->getState()I

    move-result v11

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->isHeld()Z

    move-result v16

    move-object v7, v12

    move v8, v0

    move-object v9, v14

    move/from16 v17, v0

    move-object v0, v12

    .end local v0    # "dialogId":I
    .local v17, "dialogId":I
    move v12, v15

    move-object v2, v13

    move/from16 v13, v16

    invoke-direct/range {v7 .. v13}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v4    # "remoteUri":Ljava/lang/String;
    .end local v5    # "info":Lcom/sec/ims/Dialog;
    .end local v6    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v14    # "address":Landroid/net/Uri;
    .end local v15    # "callType":I
    .end local v17    # "dialogId":I
    move/from16 v2, p2

    goto/16 :goto_0

    .line 85
    .restart local v0    # "dialogId":I
    .restart local v5    # "info":Lcom/sec/ims/Dialog;
    .restart local v6    # "mno":Lcom/sec/internal/constants/Mno;
    .restart local v7    # "remoteUri":Ljava/lang/String;
    :cond_9
    move/from16 v17, v0

    .end local v0    # "dialogId":I
    .restart local v17    # "dialogId":I
    move/from16 v2, p2

    goto/16 :goto_0

    .line 76
    .end local v17    # "dialogId":I
    .local v7, "dialogId":I
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/NumberFormatException;
    move/from16 v2, p2

    goto/16 :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "info":Lcom/sec/ims/Dialog;
    .end local v6    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v7    # "dialogId":I
    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "DE="

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "crLogBuf":Ljava/lang/StringBuffer;
    iget-object v2, v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsExternalCallState;

    .line 122
    .local v3, "iecs":Landroid/telephony/ims/ImsExternalCallState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsExternalCallState;->getCallId()I

    move-result v6

    const v7, 0x186a0

    rem-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v3}, Landroid/telephony/ims/ImsExternalCallState;->getCallState()I

    move-result v7

    const-string v8, "T"

    if-ne v7, v4, :cond_b

    const-string v7, "C"

    goto :goto_5

    :cond_b
    move-object v7, v8

    :goto_5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v3}, Landroid/telephony/ims/ImsExternalCallState;->isCallHeld()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "H"

    goto :goto_6

    :cond_c
    const-string v7, "A"

    :goto_6
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsExternalCallState;->isCallPullable()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_7

    :cond_d
    const-string v8, "F"

    :goto_7
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    .end local v3    # "iecs":Landroid/telephony/ims/ImsExternalCallState;
    goto :goto_4

    .line 126
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "crLog":Ljava/lang/String;
    const v3, 0x30000038

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 128
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsExternalCallStateListener;

    .line 39
    iput-object p1, p0, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mImsMultiEndpointListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    .line 40
    return-void
.end method

.method public setP2pPushDialogInfo(Lcom/sec/ims/DialogEvent;I)V
    .locals 15
    .param p1, "de"    # Lcom/sec/ims/DialogEvent;
    .param p2, "cmcType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    move-object v1, p0

    iget-object v0, v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/sec/ims/Dialog;

    .line 151
    .local v3, "info":Lcom/sec/ims/Dialog;
    if-nez v3, :cond_0

    .line 152
    goto :goto_0

    .line 155
    :cond_0
    const/4 v4, -0x1

    .line 157
    .local v4, "dialogId":I
    :try_start_0
    invoke-virtual {v3}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v4    # "dialogId":I
    .local v6, "dialogId":I
    nop

    .line 162
    const-string/jumbo v0, "sip:D2D@samsungims.com;d2d.push"

    .line 163
    .local v0, "pushUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 164
    .local v4, "address":Landroid/net/Uri;
    invoke-virtual {v3}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v12

    .line 165
    .local v12, "callType":I
    iget-object v13, v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;->mDialogList:Ljava/util/List;

    new-instance v14, Landroid/telephony/ims/ImsExternalCallState;

    invoke-virtual {v3}, Lcom/sec/ims/Dialog;->isPullAvailable()Z

    move-result v8

    invoke-virtual {v3}, Lcom/sec/ims/Dialog;->getState()I

    move-result v9

    invoke-virtual {v3}, Lcom/sec/ims/Dialog;->isHeld()Z

    move-result v11

    move-object v5, v14

    move-object v7, v4

    move v10, v12

    invoke-direct/range {v5 .. v11}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v0    # "pushUri":Ljava/lang/String;
    .end local v3    # "info":Lcom/sec/ims/Dialog;
    .end local v4    # "address":Landroid/net/Uri;
    .end local v6    # "dialogId":I
    .end local v12    # "callType":I
    goto :goto_0

    .line 158
    .restart local v3    # "info":Lcom/sec/ims/Dialog;
    .local v4, "dialogId":I
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "info":Lcom/sec/ims/Dialog;
    .end local v4    # "dialogId":I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->requestImsExternalCallStateInfo()V

    .line 168
    return-void
.end method
