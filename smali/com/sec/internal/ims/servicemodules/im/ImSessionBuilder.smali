.class public Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
.super Ljava/lang/Object;
.source "ImSessionBuilder.java"


# instance fields
.field public mAcceptTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAcceptWrappedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

.field public mChatId:Ljava/lang/String;

.field public mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

.field public mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

.field public mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field public mContributionId:Ljava/lang/String;

.field public mConversationId:Ljava/lang/String;

.field public mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field public mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

.field public mIconPath:Ljava/lang/String;

.field public mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field public mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

.field public mLooper:Landroid/os/Looper;

.field public final mNeedToRevokeMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mOwnGroupAlias:Ljava/lang/String;

.field public mOwnIMSI:Ljava/lang/String;

.field public mOwnNumber:Ljava/lang/String;

.field public final mParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public final mParticipantsUri:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mRawHandle:Ljava/lang/Object;

.field public mRequestMessageId:Ljava/lang/String;

.field public mSdpContentType:Ljava/lang/String;

.field public mServiceId:Ljava/lang/String;

.field public mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

.field public mSessionUri:Lcom/sec/ims/util/ImsUri;

.field public mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

.field public mSubject:Ljava/lang/String;

.field public mThreadId:I

.field public mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipantsUri:Ljava/util/Set;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipants:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mNeedToRevokeMessages:Ljava/util/Map;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mThreadId:I

    .line 46
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mAcceptTypes:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mAcceptWrappedTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public acceptTypes(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;"
        }
    .end annotation

    .line 198
    .local p1, "acceptTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mAcceptTypes:Ljava/util/List;

    .line 199
    return-object p0
.end method

.method public acceptWrappedTypes(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;"
        }
    .end annotation

    .line 203
    .local p1, "acceptTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mAcceptWrappedTypes:Ljava/util/List;

    .line 204
    return-object p0
.end method

.method public build()Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mLooper:Landroid/os/Looper;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatId:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mChatId is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-nez v0, :cond_5

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipantsUri:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipants:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;->CONFERENCE:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    move v0, v1

    .line 232
    .local v0, "isGroupChat":Z
    if-eqz v0, :cond_4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    :goto_2
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 235
    .end local v0    # "isGroupChat":Z
    :cond_5
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;)V

    return-object v0
.end method

.method public chatData(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "chatData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 98
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 99
    return-object p0
.end method

.method public chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatId:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "chatMode"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 108
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 109
    return-object p0
.end method

.method public chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 103
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 104
    return-object p0
.end method

.method public config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "config"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 83
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 84
    return-object p0
.end method

.method public contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "contributionId"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mContributionId:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "conversationId"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mConversationId:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 183
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 184
    return-object p0
.end method

.method public getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "getter"    # Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    .line 188
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    .line 189
    return-object p0
.end method

.method public iconPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "iconPath"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mIconPath:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "imsService"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 73
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 74
    return-object p0
.end method

.method public listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "listener"    # Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    .line 64
    return-object p0
.end method

.method public looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 68
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mLooper:Landroid/os/Looper;

    .line 69
    return-object p0
.end method

.method public needToRevokeMessages(Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;"
        }
    .end annotation

    .line 208
    .local p1, "needToRevokeMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 209
    return-object p0
.end method

.method public ownGroupAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .line 168
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mOwnGroupAlias:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "ownNum"    # Ljava/lang/String;

    .line 158
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mOwnNumber:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mOwnIMSI:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public participants(Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;"
        }
    .end annotation

    .line 123
    .local p1, "participants":Ljava/util/Map;, "Ljava/util/Map<Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipants:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 124
    return-object p0
.end method

.method public participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;"
        }
    .end annotation

    .line 118
    .local p1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipantsUri:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 119
    return-object p0
.end method

.method public rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "rawHandle"    # Ljava/lang/Object;

    .line 138
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mRawHandle:Ljava/lang/Object;

    .line 139
    return-object p0
.end method

.method public requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "requestMessageId"    # Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mRequestMessageId:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public sdpContentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "sdpContentType"    # Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSdpContentType:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public serviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mServiceId:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public sessionType(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    .line 113
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    .line 114
    return-object p0
.end method

.method public sessionUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "sessionUri"    # Lcom/sec/ims/util/ImsUri;

    .line 213
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    .line 214
    return-object p0
.end method

.method public slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "slmService"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 79
    return-object p0
.end method

.method public subject(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSubject:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public threadId(I)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "threadId"    # I

    .line 153
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mThreadId:I

    .line 154
    return-object p0
.end method

.method public uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .param p1, "uriGenerator"    # Lcom/sec/internal/ims/util/UriGenerator;

    .line 88
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 89
    return-object p0
.end method
