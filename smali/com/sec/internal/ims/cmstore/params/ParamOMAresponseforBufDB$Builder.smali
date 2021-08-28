.class public Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
.super Ljava/lang/Object;
.source "ParamOMAresponseforBufDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;-><init>(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 73
    return-void
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$1400(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 160
    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$1400(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 159
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveInitialSyncStatus(I)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    return-object v0
.end method

.method public setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$102(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 77
    return-object p0
.end method

.method public setAllPayloads(Ljava/util/List;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/mail/BodyPart;",
            ">;)",
            "Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;"
        }
    .end annotation

    .line 136
    .local p1, "payloads":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/BodyPart;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$1302(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/util/List;)Ljava/util/List;

    .line 137
    return-object p0
.end method

.method public setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$502(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 97
    return-object p0
.end method

.method public setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$602(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 102
    return-object p0
.end method

.method public setBulkResponseList(Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "list"    # Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$1602(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;)Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    .line 152
    return-object p0
.end method

.method public setByte([B)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "data"    # [B

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$1002(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;[B)[B

    .line 122
    return-object p0
.end method

.method public setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "cursor"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$1202(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$202(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public setNotificationList([Lcom/sec/internal/omanetapi/nc/data/NotificationList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "notificaitonList"    # [Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$702(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;[Lcom/sec/internal/omanetapi/nc/data/NotificationList;)[Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    .line 107
    return-object p0
.end method

.method public setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$1402(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 142
    return-object p0
.end method

.method public setObject(Lcom/sec/internal/omanetapi/nms/data/Object;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "obj"    # Lcom/sec/internal/omanetapi/nms/data/Object;

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$802(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/Object;)Lcom/sec/internal/omanetapi/nms/data/Object;

    .line 112
    return-object p0
.end method

.method public setObjectList(Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "objectlist"    # Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$302(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    .line 87
    return-object p0
.end method

.method public setPayloadUrl(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "payloadurl"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$1102(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public setReference(Lcom/sec/internal/omanetapi/nms/data/Reference;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "reference"    # Lcom/sec/internal/omanetapi/nms/data/Reference;

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$402(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/Reference;)Lcom/sec/internal/omanetapi/nms/data/Reference;

    .line 92
    return-object p0
.end method

.method public setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$1502(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 147
    return-object p0
.end method

.method public setVvmServiceProfile(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .param p1, "profile"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->access$902(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    .line 117
    return-object p0
.end method
