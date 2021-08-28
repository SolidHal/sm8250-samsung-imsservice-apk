.class public Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
.super Ljava/util/Observable;
.source "ChatData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;,
        Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    }
.end annotation


# instance fields
.field private final mChatId:Ljava/lang/String;

.field private mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

.field private mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

.field private mContributionId:Ljava/lang/String;

.field private mConversationId:Ljava/lang/String;

.field private mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field private mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

.field private final mIconPath:Ljava/lang/String;

.field private mId:I

.field private mInsertedTimeStamp:J

.field private mIsChatbotRole:Z

.field private mIsIconUpdateRequiredOnSessionEstablished:Z

.field private mIsMuted:Z

.field private mIsReusable:Z

.field private final mMaxParticipantCount:I

.field private mOwnGroupAlias:Ljava/lang/String;

.field private mOwnIMSI:Ljava/lang/String;

.field private mOwnNumber:Ljava/lang/String;

.field private mSessionUri:Lcom/sec/ims/util/ImsUri;

.field private mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field private mSubject:Ljava/lang/String;

.field private mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;Ljava/lang/String;ZILcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZJLjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)V
    .locals 18
    .param p1, "id"    # I
    .param p2, "chatId"    # Ljava/lang/String;
    .param p3, "ownNumber"    # Ljava/lang/String;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p6, "state"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    .param p7, "subject"    # Ljava/lang/String;
    .param p8, "isMuted"    # Z
    .param p9, "maxParticipantCount"    # I
    .param p10, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p11, "conversationId"    # Ljava/lang/String;
    .param p12, "contributionId"    # Ljava/lang/String;
    .param p13, "sessionUri"    # Lcom/sec/ims/util/ImsUri;
    .param p14, "isReusable"    # Z
    .param p15, "timeStamp"    # J
    .param p17, "ownIMSI"    # Ljava/lang/String;
    .param p18, "subjectParticipant"    # Lcom/sec/ims/util/ImsUri;
    .param p19, "subjectTimestamp"    # Ljava/util/Date;
    .param p20, "iconPath"    # Ljava/lang/String;
    .param p21, "iconParticipant"    # Lcom/sec/ims/util/ImsUri;
    .param p22, "iconTimestamp"    # Ljava/util/Date;
    .param p23, "iconUri"    # Ljava/lang/String;
    .param p24, "isChatbotRole"    # Z
    .param p25, "chatMode"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p18

    move-object/from16 v3, p19

    move-object/from16 v10, p20

    invoke-direct/range {p0 .. p0}, Ljava/util/Observable;-><init>()V

    .line 24
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 25
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 26
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 45
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    .line 76
    move/from16 v11, p1

    iput v11, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    .line 77
    move-object/from16 v12, p2

    iput-object v12, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    .line 78
    move-object/from16 v13, p3

    iput-object v13, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    .line 79
    move-object/from16 v14, p4

    iput-object v14, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    .line 80
    move-object/from16 v15, p5

    iput-object v15, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 81
    move-object/from16 v9, p6

    iput-object v9, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 82
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    .line 83
    move/from16 v8, p8

    iput-boolean v8, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    .line 84
    move/from16 v7, p9

    iput v7, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    .line 85
    move-object/from16 v6, p10

    iput-object v6, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 86
    move-object/from16 v5, p11

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    .line 87
    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    .line 88
    move-object/from16 v11, p13

    iput-object v11, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    .line 89
    move/from16 v11, p14

    iput-boolean v11, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    .line 90
    move-wide/from16 v11, p15

    iput-wide v11, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    .line 91
    move-object/from16 v11, p17

    iput-object v11, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 92
    iput-object v10, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconPath:Ljava/lang/String;

    .line 93
    move/from16 v12, p24

    iput-boolean v12, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    .line 94
    move-object/from16 v11, p25

    iput-object v11, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 96
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    .line 97
    :cond_0
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-direct {v4, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 100
    :cond_1
    if-nez v10, :cond_2

    if-nez p21, :cond_2

    if-eqz p22, :cond_4

    .line 101
    :cond_2
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    if-nez p23, :cond_3

    .line 102
    sget-object v16, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_FILE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    goto :goto_0

    :cond_3
    sget-object v16, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    :goto_0
    move-object/from16 v17, v4

    move-object/from16 v5, v16

    move-object/from16 v6, p21

    move-object/from16 v7, p22

    move-object/from16 v8, p20

    move-object/from16 v9, p23

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 105
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Lcom/sec/ims/util/ImsUri;)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "ownNumber"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p6, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p7, "conversationId"    # Ljava/lang/String;
    .param p8, "contributionId"    # Ljava/lang/String;
    .param p9, "ownIMSI"    # Ljava/lang/String;
    .param p10, "iconPath"    # Ljava/lang/String;
    .param p11, "chatMode"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .param p12, "sessionUri"    # Lcom/sec/ims/util/ImsUri;

    .line 51
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 25
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 26
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    .line 52
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 54
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    .line 57
    iput-object p10, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconPath:Ljava/lang/String;

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    .line 59
    iput-object p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 60
    iput-object p7, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    .line 61
    iput-object p8, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    .line 63
    iput-object p9, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 64
    iput-object p11, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 65
    iput-object p12, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    .line 67
    if-eqz p4, :cond_0

    .line 68
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 463
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 464
    return v0

    .line 466
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 467
    return v1

    .line 469
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 470
    return v1

    .line 472
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 473
    .local v2, "other":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 474
    iget-object v3, v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 475
    return v1

    .line 477
    :cond_3
    iget-object v4, v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 478
    return v1

    .line 480
    :cond_4
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    iget v4, v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    if-ne v3, v4, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    return-object v0
.end method

.method public getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object v0
.end method

.method public getContributionId()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object v0
.end method

.method public getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    return v0
.end method

.method public getMaxParticipantsCount()I
    .locals 1

    .line 428
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    return v0
.end method

.method public getOwnGroupAlias()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnIMSI()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnPhoneNum()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionUri()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 433
    const/16 v0, 0x1f

    .line 434
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 435
    .local v1, "result":I
    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 436
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int v1, v0, v2

    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    add-int/2addr v1, v3

    .line 437
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isChatbotRole()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    return v0
.end method

.method public isGroupChat()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v0

    return v0
.end method

.method public isIconUpdatedRequiredOnSessionEstablished()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsIconUpdateRequiredOnSessionEstablished:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    return v0
.end method

.method public isReusable()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    return v0
.end method

.method public setContributionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contributionId"    # Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;

    .line 250
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    .locals 1
    .param p1, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 269
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-eq p1, v0, :cond_0

    .line 270
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 271
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 273
    :cond_0
    return-void
.end method

.method public setIconUpdatedRequiredOnSessionEstablished(Z)V
    .locals 0
    .param p1, "iconUpdateRequired"    # Z

    .line 296
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsIconUpdateRequiredOnSessionEstablished:Z

    .line 297
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 195
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    .line 196
    return-void
.end method

.method public setOwnIMSI(Ljava/lang/String;)V
    .locals 1
    .param p1, "ownIMSI"    # Ljava/lang/String;

    .line 262
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 264
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 266
    :cond_0
    return-void
.end method

.method public setOwnPhoneNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "ownNumber"    # Ljava/lang/String;

    .line 258
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setSessionUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 0
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 254
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    .line 255
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .line 242
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatData [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOwnNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    .line 444
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChatType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    .line 447
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMuted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxParticipantCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsReusable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInsertedTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mOwnIMSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 455
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsChatbotRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    return-object v0
.end method

.method public triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 0
    .param p1, "action"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    .line 423
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setChanged()V

    .line 424
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->notifyObservers(Ljava/lang/Object;)V

    .line 425
    return-void
.end method

.method public updateChatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)V
    .locals 1
    .param p1, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 179
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-eq v0, p1, :cond_0

    .line 180
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 181
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 183
    :cond_0
    return-void
.end method

.method public updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 1
    .param p1, "iconData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 397
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 398
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 399
    return-void
.end method

.method public updateIsChatbotRole(Z)V
    .locals 1
    .param p1, "isChatbotRole"    # Z

    .line 416
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    if-eq p1, v0, :cond_0

    .line 417
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    .line 418
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 420
    :cond_0
    return-void
.end method

.method public updateIsMuted(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 231
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    if-eq v0, p1, :cond_0

    .line 232
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    .line 233
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 235
    :cond_0
    return-void
.end method

.method public updateIsReusable(Z)V
    .locals 1
    .param p1, "isReusable"    # Z

    .line 409
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    if-eq p1, v0, :cond_0

    .line 410
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    .line 411
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 413
    :cond_0
    return-void
.end method

.method public updateOwnGroupAlias(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 402
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    .line 404
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 406
    :cond_0
    return-void
.end method

.method public updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V
    .locals 1
    .param p1, "state"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 376
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    if-eq p1, v0, :cond_0

    .line 377
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 378
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 380
    :cond_0
    return-void
.end method

.method public updateSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .line 383
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    .line 385
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 387
    :cond_0
    return-void
.end method

.method public updateSubjectData(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V
    .locals 1
    .param p1, "subjectData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 390
    if-eqz p1, :cond_0

    .line 391
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 392
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 394
    :cond_0
    return-void
.end method
