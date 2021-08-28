.class Lcom/sec/internal/google/ImsUtImpl$1;
.super Lcom/sec/ims/ss/IImsUtEventListener$Stub;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/ImsUtImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/ImsUtImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/google/ImsUtImpl;

    .line 24
    iput-object p1, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-direct {p0}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUtConfigurationCallBarringQueried(I[Landroid/os/Bundle;)V
    .locals 7
    .param p1, "reqId"    # I
    .param p2, "callBarringList"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsUtImpl;->access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 94
    sget-object v0, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    array-length v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/ims/ImsSsInfo;

    .line 95
    .local v0, "ssInfoList":[Landroid/telephony/ims/ImsSsInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 96
    aget-object v2, p2, v1

    const-string/jumbo v3, "status"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 97
    .local v2, "status":I
    aget-object v3, p2, v1

    const-string v5, "condition"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 98
    .local v3, "cbType":I
    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 99
    aget-object v4, p2, v1

    const-string v5, "number"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "number":Ljava/lang/String;
    new-instance v5, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v5, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 101
    invoke-virtual {v5, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v5

    .line 102
    .local v5, "builder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v6

    aput-object v6, v0, v1

    .line 103
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "builder":Landroid/telephony/ims/ImsSsInfo$Builder;
    goto :goto_1

    .line 104
    :cond_0
    aget-object v4, p2, v1

    const-string/jumbo v5, "serviceClass"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 105
    .local v4, "serviceClass":I
    new-instance v5, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v5, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 106
    invoke-virtual {v5, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->setServiceClass(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v5

    .line 107
    .restart local v5    # "builder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v6

    aput-object v6, v0, v1

    .line 95
    .end local v2    # "status":I
    .end local v3    # "cbType":I
    .end local v4    # "serviceClass":I
    .end local v5    # "builder":Landroid/telephony/ims/ImsSsInfo$Builder;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v1}, Lcom/sec/internal/google/ImsUtImpl;->access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1, v0}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 112
    .end local v0    # "ssInfoList":[Landroid/telephony/ims/ImsSsInfo;
    :cond_2
    return-void
.end method

.method public onUtConfigurationCallForwardQueried(I[Landroid/os/Bundle;)V
    .locals 18
    .param p1, "reqId"    # I
    .param p2, "callForwardList"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v2}, Lcom/sec/internal/google/ImsUtImpl;->access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 72
    sget-object v2, Landroid/telephony/ims/ImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    array-length v3, v1

    invoke-interface {v2, v3}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 73
    .local v2, "cfInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 74
    aget-object v4, v1, v3

    const-string/jumbo v5, "status"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 75
    .local v4, "status":I
    aget-object v5, v1, v3

    const-string v7, "condition"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 76
    .local v5, "cfType":I
    aget-object v7, v1, v3

    const-string v8, "NoReplyTimer"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 77
    .local v14, "noReplyTimer":I
    aget-object v7, v1, v3

    const-string v8, "ToA"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 78
    .local v6, "uriType":I
    aget-object v7, v1, v3

    const-string v8, "number"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "cfUri":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 80
    const-string v7, ""

    move-object v15, v7

    goto :goto_1

    .line 79
    :cond_0
    move-object v15, v7

    .line 82
    .end local v7    # "cfUri":Ljava/lang/String;
    .local v15, "cfUri":Ljava/lang/String;
    :goto_1
    aget-object v7, v1, v3

    const-string/jumbo v8, "serviceClass"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 83
    .local v16, "ssClass":I
    new-instance v17, Landroid/telephony/ims/ImsCallForwardInfo;

    move-object/from16 v7, v17

    move v8, v5

    move v9, v4

    move v10, v6

    move/from16 v11, v16

    move-object v12, v15

    move v13, v14

    invoke-direct/range {v7 .. v13}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>(IIIILjava/lang/String;I)V

    .line 85
    .local v7, "cfInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    aput-object v7, v2, v3

    .line 73
    .end local v4    # "status":I
    .end local v5    # "cfType":I
    .end local v6    # "uriType":I
    .end local v7    # "cfInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    .end local v14    # "noReplyTimer":I
    .end local v15    # "cfUri":Ljava/lang/String;
    .end local v16    # "ssClass":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    .end local v3    # "i":I
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v3}, Lcom/sec/internal/google/ImsUtImpl;->access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v5, p1

    invoke-interface {v3, v4, v5, v2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    goto :goto_2

    .line 71
    .end local v2    # "cfInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    :cond_2
    move/from16 v5, p1

    .line 89
    :goto_2
    return-void
.end method

.method public onUtConfigurationCallWaitingQueried(IZ)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsUtImpl;->access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/ims/ImsSsInfo;

    .line 63
    .local v0, "ssInfoList":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v1, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 64
    .local v1, "builder":Landroid/telephony/ims/ImsSsInfo$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v3

    aput-object v3, v0, v2

    .line 65
    iget-object v2, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v2}, Lcom/sec/internal/google/ImsUtImpl;->access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v0}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 67
    .end local v0    # "ssInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .end local v1    # "builder":Landroid/telephony/ims/ImsSsInfo$Builder;
    :cond_0
    return-void
.end method

.method public onUtConfigurationQueried(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsUtImpl;->access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsUtImpl;->access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    .line 50
    :cond_0
    return-void
.end method

.method public onUtConfigurationQueryFailed(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsUtImpl;->access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "errorCode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, "errorCode":I
    const-string v2, "errorMsg"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "errorMsg":Ljava/lang/String;
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v4, v0}, Lcom/sec/internal/google/ImsUtImpl;->access$100(Lcom/sec/internal/google/ImsUtImpl;I)I

    move-result v4

    invoke-direct {v3, v4, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v1, v3

    .line 41
    .local v1, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v3, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v3}, Lcom/sec/internal/google/ImsUtImpl;->access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1, v1}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 43
    .end local v0    # "errorCode":I
    .end local v1    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v2    # "errorMsg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onUtConfigurationUpdateFailed(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsUtImpl;->access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "errorCode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 29
    .local v0, "errorCode":I
    const-string v2, "errorMsg"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "errorMsg":Ljava/lang/String;
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v4, v0}, Lcom/sec/internal/google/ImsUtImpl;->access$100(Lcom/sec/internal/google/ImsUtImpl;I)I

    move-result v4

    invoke-direct {v3, v4, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v1, v3

    .line 31
    .local v1, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v3, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v3}, Lcom/sec/internal/google/ImsUtImpl;->access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1, v1}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 33
    .end local v0    # "errorCode":I
    .end local v1    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v2    # "errorMsg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onUtConfigurationUpdated(I)V
    .locals 2
    .param p1, "reqId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsUtImpl;->access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl$1;->this$0:Lcom/sec/internal/google/ImsUtImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsUtImpl;->access$000(Lcom/sec/internal/google/ImsUtImpl;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 57
    :cond_0
    return-void
.end method
