.class public Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
.super Ljava/lang/Object;
.source "ParamOMAObject.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public CALL_DURATION:Ljava/lang/String;

.field public CALL_STARTTIMESTAMP:Ljava/lang/String;

.field public CALL_TYPE:Ljava/lang/String;

.field public CONTENT_DURATION:Ljava/lang/String;

.field public CONTENT_TYPE:Ljava/lang/String;

.field public CONTRIBUTION_ID:Ljava/lang/String;

.field public CONVERSATION_ID:Ljava/lang/String;

.field public DATE:Ljava/lang/String;

.field public DIRECTION:Ljava/lang/String;

.field public DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

.field public DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

.field public DISPOSITION_STATUS:Ljava/lang/String;

.field public FROM:Ljava/lang/String;

.field public IS_CPM_GROUP:Z

.field public IS_OPEN_GROUP:Z

.field public MESSAGE_ID:Ljava/lang/String;

.field public MULTIPARTCONTENTTYPE:Ljava/lang/String;

.field public PARTICIPATING_DEVICE:Ljava/lang/String;

.field public SUBJECT:Ljava/lang/String;

.field public TEXT_CONTENT:Ljava/lang/String;

.field public TO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public X_CNS_Greeting_Type:Ljava/lang/String;

.field public correlationId:Ljava/lang/String;

.field public correlationTag:Ljava/lang/String;

.field public lastModSeq:Ljava/lang/Long;

.field public mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

.field public mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

.field private mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field public mIsFromChangedObj:Z

.field public mIsGoforwardSync:Z

.field public mLine:Ljava/lang/String;

.field public mNomalizedOtherParticipants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mObjectType:I

.field private mRawFromString:Ljava/lang/String;

.field public mReassembled:Z

.field public parentFolder:Ljava/net/URL;

.field public parentFolderPath:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

.field public payloadURL:Ljava/net/URL;

.field public resourceURL:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;ZILjava/lang/String;)V
    .locals 8
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
    .param p2, "isGoForwardSync"    # Z
    .param p3, "dbIndex"    # I
    .param p4, "dataType"    # Ljava/lang/String;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTRIBUTION_ID:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CALL_DURATION:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CALL_STARTTIMESTAMP:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CALL_TYPE:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_DURATION:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->PARTICIPATING_DEVICE:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->X_CNS_Greeting_Type:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_OPEN_GROUP:Z

    .line 64
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_CPM_GROUP:Z

    .line 65
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MULTIPARTCONTENTTYPE:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGE_ID:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mReassembled:Z

    .line 70
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsFromChangedObj:Z

    .line 71
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 73
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    .line 310
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsFromChangedObj:Z

    .line 311
    iput-boolean p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    .line 312
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->parentFolder:Ljava/net/URL;

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 313
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 314
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 315
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 316
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    .line 317
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    .line 318
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->lastModSeq:Ljava/lang/Long;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    .line 319
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    .line 320
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    .line 321
    const-string v0, "FT"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0xb

    if-eqz v0, :cond_0

    .line 322
    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    goto :goto_0

    .line 323
    :cond_0
    const-string v0, "CHAT"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iput v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    goto :goto_0

    .line 325
    :cond_1
    const-string v0, "GSO"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    const/16 v0, 0x22

    iput v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    goto :goto_0

    .line 328
    :cond_2
    iput p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 331
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->message_time:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    .line 332
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->direction:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    .line 333
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->reassembled:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->reassembled:Ljava/lang/String;

    .line 334
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 335
    :cond_3
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mReassembled:Z

    .line 336
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->sender:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    const-string v2, "In"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 338
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->sender:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 339
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->recipients:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;

    array-length v2, v0

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    .line 340
    .local v5, "value":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    iget-object v7, v5, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;->uri:Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v5    # "value":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 343
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 344
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->recipients:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;

    array-length v2, v0

    move v4, v1

    :goto_3
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    .line 345
    .restart local v5    # "value":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    iget-object v7, v5, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;->uri:Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v5    # "value":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 348
    :cond_5
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->content:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 349
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->content:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;->content_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    .line 350
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->content:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;->rcsdata:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsData;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsData;->conversation_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    .line 351
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->content:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;->rcsdata:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsData;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsData;->contribution_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTRIBUTION_ID:Ljava/lang/String;

    .line 352
    iget v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    if-eq v3, v0, :cond_6

    const/16 v1, 0xe

    if-ne v1, v0, :cond_7

    .line 354
    :cond_6
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->updatePartcipantContentEmail()V

    .line 358
    :cond_7
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getNormalizedParticipantsExcludeOwn()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    .line 359
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/omanetapi/nms/data/Object;ZILcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 7
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/Object;
    .param p2, "isGoForwardSync"    # Z
    .param p3, "dbIndex"    # I
    .param p4, "iClouldMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTRIBUTION_ID:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CALL_DURATION:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CALL_STARTTIMESTAMP:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CALL_TYPE:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_DURATION:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->PARTICIPATING_DEVICE:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->X_CNS_Greeting_Type:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_OPEN_GROUP:Z

    .line 64
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_CPM_GROUP:Z

    .line 65
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MULTIPARTCONTENTTYPE:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGE_ID:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mReassembled:Z

    .line 70
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsFromChangedObj:Z

    .line 71
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 73
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    .line 111
    iput-boolean p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    .line 112
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->parentFolder:Ljava/net/URL;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 113
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->parentFolderPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolderPath:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 115
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 116
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->resourceURL:Ljava/net/URL;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 117
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    .line 122
    :goto_0
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->payloadURL:Ljava/net/URL;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    .line 123
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    .line 124
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->lastModSeq:Ljava/lang/Long;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    .line 125
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    .line 126
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    .line 127
    iput p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    .line 128
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "bccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    array-length v3, v3

    if-ge v2, v3, :cond_1e

    .line 134
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    if-eqz v3, :cond_1d

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 136
    goto/16 :goto_5

    .line 138
    :cond_1
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 139
    const-string v5, "$DATE"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    goto/16 :goto_5

    .line 141
    :cond_2
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 142
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 143
    const-string v5, "$IS$CPM$GROUP"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "yes"

    if-eqz v3, :cond_3

    .line 144
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_CPM_GROUP:Z

    goto/16 :goto_5

    .line 145
    :cond_3
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v5

    .line 146
    const-string v6, "$IS$OPEN$GROUP"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 145
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_OPEN_GROUP:Z

    goto/16 :goto_5

    .line 148
    :cond_4
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 149
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 150
    const-string v5, "$DIRECTION"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 151
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    goto/16 :goto_5

    .line 152
    :cond_5
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 153
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 154
    const-string v5, "$FROM"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 155
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 156
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    goto/16 :goto_5

    .line 157
    :cond_6
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 158
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 159
    const-string v5, "$TO"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 160
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    if-eqz v3, :cond_1d

    .line 161
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_7

    .line 162
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v5, v5, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3    # "j":I
    :cond_7
    goto/16 :goto_5

    .line 165
    :cond_8
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 166
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 167
    const-string v5, "$CC"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 168
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    if-eqz v3, :cond_1d

    .line 169
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_9

    .line 170
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v5, v5, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3    # "j":I
    :cond_9
    goto/16 :goto_5

    .line 173
    :cond_a
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 174
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 175
    const-string v5, "$BCC"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 176
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    if-eqz v3, :cond_1d

    .line 177
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_4
    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_b

    .line 178
    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v3    # "j":I
    :cond_b
    goto/16 :goto_5

    .line 181
    :cond_c
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 182
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 183
    const-string v5, "$TEXT$CONTENT"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 184
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    goto/16 :goto_5

    .line 185
    :cond_d
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 186
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 187
    const-string v5, "$SUBJECT"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 188
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    goto/16 :goto_5

    .line 189
    :cond_e
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 190
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 191
    const-string v5, "$CONVERSATION$ID"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 192
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    goto/16 :goto_5

    .line 193
    :cond_f
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 194
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 195
    const-string v5, "$CONTRIBUTION$ID"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 196
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTRIBUTION_ID:Ljava/lang/String;

    goto/16 :goto_5

    .line 197
    :cond_10
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 198
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 199
    const-string v5, "$DISPOSITION$STATUS"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 200
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    goto/16 :goto_5

    .line 201
    :cond_11
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 202
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 203
    const-string v5, "$DISPOSITION$ORIGINAL$TO"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 204
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    goto/16 :goto_5

    .line 205
    :cond_12
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 206
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 207
    const-string v5, "$DISPOSITION$ORIGINAL$MESSAGEID"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 208
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    goto/16 :goto_5

    .line 209
    :cond_13
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 210
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 211
    const-string v5, "$MULTIPARTCONTENTTYPE"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 209
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 212
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MULTIPARTCONTENTTYPE:Ljava/lang/String;

    goto/16 :goto_5

    .line 213
    :cond_14
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 214
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 215
    const-string v5, "$CONTENT$TYPE"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 213
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 216
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    goto/16 :goto_5

    .line 217
    :cond_15
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 218
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 219
    const-string v5, "$MESSAGE$ID"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 220
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGE_ID:Ljava/lang/String;

    goto/16 :goto_5

    .line 221
    :cond_16
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 222
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 223
    const-string v5, "$CALL$DURATION"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 224
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CALL_DURATION:Ljava/lang/String;

    goto/16 :goto_5

    .line 225
    :cond_17
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 226
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 227
    const-string v5, "$CALL$STARTTIMESTAMP"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 228
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CALL_STARTTIMESTAMP:Ljava/lang/String;

    goto/16 :goto_5

    .line 229
    :cond_18
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 230
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 231
    const-string v5, "$CALL$TYPE"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 232
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CALL_TYPE:Ljava/lang/String;

    goto/16 :goto_5

    .line 233
    :cond_19
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 234
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 235
    const-string v5, "$CONTENT$DURATION"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 236
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_DURATION:Ljava/lang/String;

    goto/16 :goto_5

    .line 237
    :cond_1a
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 238
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 239
    const-string v5, "$PARTICIPATING$DEVICE"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 240
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->PARTICIPATING_DEVICE:Ljava/lang/String;

    goto :goto_5

    .line 241
    :cond_1b
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 242
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 243
    const-string v5, "$X$CNS$GREETING$TYPE"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 244
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->X_CNS_Greeting_Type:Ljava/lang/String;

    goto :goto_5

    .line 245
    :cond_1c
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 246
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v4

    .line 247
    const-string v5, "$MESSAGE$CONTEXT"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 245
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 248
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getMessageContextType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    .line 133
    :cond_1d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 252
    .end local v2    # "i":I
    :cond_1e
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    const-string v2, "Out"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 253
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 256
    :cond_1f
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->shouldCorrectShortCode()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 257
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->recalculateCorrelationTag()V

    .line 260
    :cond_20
    const/16 v1, 0x10

    iget v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    if-ne v1, v2, :cond_21

    .line 261
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->convertToOriginalUri(Lcom/sec/internal/omanetapi/nms/data/Object;I)V

    .line 263
    :cond_21
    const/16 v1, 0xb

    iget v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    if-eq v1, v2, :cond_22

    const/16 v1, 0xe

    if-ne v1, v2, :cond_23

    .line 265
    :cond_22
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->updatePartcipantContentEmail()V

    .line 267
    :cond_23
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getNormalizedParticipantsExcludeOwn()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    .line 268
    return-void
.end method

.method private convertToOriginalUri(Lcom/sec/internal/omanetapi/nms/data/Object;I)V
    .locals 4
    .param p1, "objt"    # Lcom/sec/internal/omanetapi/nms/data/Object;
    .param p2, "objectType"    # I

    .line 285
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertToOriginalUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 288
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v2

    .line 289
    const-string v3, "$FROM"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    goto :goto_2

    .line 291
    :cond_0
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 292
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v2

    .line 293
    const-string v3, "$TO"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 295
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 287
    .end local v1    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .locals 6
    .param p1, "fglist"    # Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 78
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCloudActionPerFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 81
    .local v0, "action":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    if-eqz p1, :cond_9

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_5

    .line 84
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    const-string v2, "\\Seen"

    if-eqz v1, :cond_4

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 86
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    goto :goto_1

    .line 89
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 90
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 85
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_3
    goto :goto_4

    .line 94
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    .line 95
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 96
    .local v3, "tempValue":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 97
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_3

    .line 98
    :cond_5
    iget-object v4, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v5, "\\Deleted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 99
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 101
    :cond_6
    :goto_3
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    if-le v4, v5, :cond_7

    .line 102
    move-object v0, v3

    .line 94
    .end local v3    # "tempValue":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 106
    .end local v1    # "i":I
    :cond_8
    :goto_4
    return-object v0

    .line 82
    :cond_9
    :goto_5
    return-object v0
.end method

.method private getMessageContextType(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 304
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageContextType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getTypeUsingMessageContext(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getNormalizedParticipantsExcludeOwn()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 272
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    .local v2, "uri":Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 274
    .local v3, "value":Lcom/sec/ims/util/ImsUri;
    if-eqz v3, :cond_0

    .line 275
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v2    # "uri":Ljava/lang/String;
    .end local v3    # "value":Lcom/sec/ims/util/ImsUri;
    :cond_0
    goto :goto_0

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 280
    return-object v0
.end method

.method private recalculateCorrelationTag()V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->isInvalidShortCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    .line 388
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->generateSmsHashCode(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    .line 391
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recalculateCorrelationTag: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_2
    return-void
.end method

.method private updatePartcipantContentEmail()V
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 365
    .local v0, "senderUri":Lcom/sec/ims/util/ImsUri;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->parseEmailOverSlm(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "email":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 368
    .local v2, "parsedUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 371
    :cond_0
    const/4 v3, 0x1

    aget-object v3, v1, v3

    iput-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 374
    .end local v0    # "senderUri":Lcom/sec/ims/util/ImsUri;
    .end local v1    # "email":[Ljava/lang/String;
    .end local v2    # "parsedUri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OMAConvertedObjectParam [mObjectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLine= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 398
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", correlationId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", correlationTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 400
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", DISPOSITION_STATUS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGoforwardSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", TEXT_CONTENT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DIRECTION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DATE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MESSAGE_ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CONTENT_TYPE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", X_CNS_Greeting_Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->X_CNS_Greeting_Type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReassembled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mReassembled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFromChangeObj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsFromChangedObj:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mNomalizedOtherParticipants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", SUBJECT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", IS_CPM_GROUP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_CPM_GROUP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IS_OPEN_GROUP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_OPEN_GROUP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    return-object v0
.end method
