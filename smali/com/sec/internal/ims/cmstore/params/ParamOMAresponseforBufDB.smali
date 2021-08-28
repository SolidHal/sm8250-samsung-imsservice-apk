.class public Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
.super Ljava/lang/Object;
.source "ParamOMAresponseforBufDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;,
        Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;
    }
.end annotation


# instance fields
.field private mActionType:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

.field private mAllPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/mail/BodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

.field private mBufferDbParamList:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

.field private mBulkResponseList:Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

.field private mDataString:[B

.field private mLine:Ljava/lang/String;

.field private mNotificaitonList:[Lcom/sec/internal/omanetapi/nc/data/NotificationList;

.field private mOMASyncEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

.field private mObject:Lcom/sec/internal/omanetapi/nms/data/Object;

.field private mObjectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

.field private mPayLoadUrl:Ljava/lang/String;

.field private mReference:Lcom/sec/internal/omanetapi/nms/data/Reference;

.field private mSearchCursor:Ljava/lang/String;

.field private mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field private mVvmServiceProfile:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$1;

    .line 20
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # [B

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mDataString:[B

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mActionType:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mPayLoadUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mSearchCursor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mAllPayloads:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 20
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mOMASyncEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mOMASyncEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;)Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mBulkResponseList:Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mLine:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/omanetapi/nms/data/ObjectList;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mObjectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/Reference;)Lcom/sec/internal/omanetapi/nms/data/Reference;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # Lcom/sec/internal/omanetapi/nms/data/Reference;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mReference:Lcom/sec/internal/omanetapi/nms/data/Reference;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mBufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mBufferDbParamList:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    return-object p1
.end method

.method static synthetic access$702(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;[Lcom/sec/internal/omanetapi/nc/data/NotificationList;)[Lcom/sec/internal/omanetapi/nc/data/NotificationList;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # [Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mNotificaitonList:[Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    return-object p1
.end method

.method static synthetic access$802(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/Object;)Lcom/sec/internal/omanetapi/nms/data/Object;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # Lcom/sec/internal/omanetapi/nms/data/Object;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mObject:Lcom/sec/internal/omanetapi/nms/data/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p1, "x1"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mVvmServiceProfile:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    return-object p1
.end method


# virtual methods
.method public getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mActionType:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    return-object v0
.end method

.method public getAllPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/mail/BodyPart;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mAllPayloads:Ljava/util/List;

    return-object v0
.end method

.method public getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mBufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    return-object v0
.end method

.method public getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mBufferDbParamList:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    return-object v0
.end method

.method public getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mBulkResponseList:Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mDataString:[B

    return-object v0
.end method

.method public getLine()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mLine:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationList()[Lcom/sec/internal/omanetapi/nc/data/NotificationList;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mNotificaitonList:[Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    return-object v0
.end method

.method public getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mOMASyncEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    return-object v0
.end method

.method public getObject()Lcom/sec/internal/omanetapi/nms/data/Object;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mObject:Lcom/sec/internal/omanetapi/nms/data/Object;

    return-object v0
.end method

.method public getObjectList()Lcom/sec/internal/omanetapi/nms/data/ObjectList;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mObjectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    return-object v0
.end method

.method public getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mReference:Lcom/sec/internal/omanetapi/nms/data/Reference;

    return-object v0
.end method

.method public getSearchCursor()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mSearchCursor:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    return-object v0
.end method

.method public getVvmServiceProfile()Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mVvmServiceProfile:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mActionType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mActionType:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mLine:Ljava/lang/String;

    .line 271
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mReference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mReference:Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mBufferDbParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mBufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPayLoadUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mPayLoadUrl:Ljava/lang/String;

    .line 274
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSearchCursor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mSearchCursor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mOMASyncEventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mOMASyncEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    return-object v0
.end method
