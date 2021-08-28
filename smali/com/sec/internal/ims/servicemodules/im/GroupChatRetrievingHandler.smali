.class public Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;
.super Landroid/os/Handler;
.source "GroupChatRetrievingHandler.java"


# static fields
.field private static final EVENT_GROUP_INFO_NOTIFICATION:I = 0x2

.field private static final EVENT_GROUP_LIST_NOTIFICATION:I = 0x1

.field private static final EVENT_SUBSCRIBE_NEXT_GROUP_CHAT_INFO:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGroupChatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mImCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

.field private final mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field private final mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

.field private final mOwnImsi:Ljava/lang/String;

.field private final mOwnPhoneNumber:Ljava/lang/String;

.field private final mPendingGroupChatUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imCache"    # Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .param p4, "imTranslation"    # Lcom/sec/internal/ims/servicemodules/im/ImTranslation;
    .param p5, "imService"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .param p6, "ownPhoneNumber"    # Ljava/lang/String;
    .param p7, "owmImsi"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mGroupChatMap:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    .line 49
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mContext:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 51
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    .line 52
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 53
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnPhoneNumber:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnImsi:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private handleGroupInfoNotification(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnImsi:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGroupInfoNotification() start, uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mChatId:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 144
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleGroupInfoNotification() fail, can not find that group chat in pending list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mGroupChatMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;

    .line 150
    .local v1, "entry":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;
    if-nez v1, :cond_1

    .line 151
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleGroupInfoNotification() fail, can not find that group chat in map"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V

    .line 156
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->pConvID:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByConversationId(Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    .line 157
    .local v2, "imSession":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v2, :cond_3

    .line 158
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 159
    .local v3, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mParticipantsInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;

    .line 160
    .local v5, "info":Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    iget-object v6, v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v5    # "info":Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    goto :goto_0

    .line 162
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mOwnImsi:Ljava/lang/String;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v9, 0x0

    move-object v6, v3

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v4

    .line 165
    .local v4, "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->pConvID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setConversationId(Ljava/lang/String;)V

    .line 166
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->sessionUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    .line 167
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->subject:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateSubject(Ljava/lang/String;)V

    .line 168
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateSubjectData(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V

    .line 169
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 172
    .end local v3    # "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .end local v4    # "chatData":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    :cond_3
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mConferenceInfoType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mParticipantsInfo:Ljava/util/List;

    iget v7, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mMaxUserCount:I

    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    iget-object v9, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mRawHandle:Ljava/lang/Object;

    iget-object v10, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mOwnImsi:Ljava/lang/String;

    iget-object v11, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;Ljava/util/List;ILcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;Ljava/lang/Object;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 175
    .local v3, "newEvent":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    .line 177
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V

    .line 179
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->sendEmptyMessage(I)Z

    .line 182
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "entry":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;
    .end local v2    # "imSession":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v3    # "newEvent":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;
    :cond_4
    return-void
.end method

.method private handleGroupListNotification(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnImsi:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;->version:I

    .line 115
    .local v0, "version":I
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;->entryList:Ljava/util/List;

    .line 116
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;>;"
    if-eqz v1, :cond_2

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;

    .line 118
    .local v3, "entry":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;
    iget-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->sessionUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->sessionUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mGroupChatMap:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->sessionUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v3    # "entry":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;
    :cond_0
    goto :goto_0

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "grouplist_setting_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 125
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 126
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "version"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->sendEmptyMessage(I)Z

    .line 131
    .end local v0    # "version":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;>;"
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void
.end method

.method private subscribeNextGroupChatInfo()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "subscribeNextGroupChatInfo() finish, list is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mGroupChatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unRegisterForGroupChatListUpdate(Landroid/os/Handler;)V

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unRegisterForGroupChatInfoUpdate(Landroid/os/Handler;)V

    .line 195
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnImsi:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->subscribeGroupChatInfo(Landroid/net/Uri;Ljava/lang/String;)V

    .line 199
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 59
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->subscribeNextGroupChatInfo()V

    .line 74
    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 69
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->handleGroupInfoNotification(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    .line 70
    goto :goto_0

    .line 63
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 64
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->handleGroupListNotification(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;)V

    .line 65
    nop

    .line 79
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :goto_0
    return-void
.end method

.method public startToRetrieveGroupChatList()V
    .locals 6

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, " can not retrieve the group chat list because own number is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grouplist_setting_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, "version":I
    const-string v3, "increaseMode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 93
    .local v2, "increaseMode":Z
    if-eqz v1, :cond_1

    .line 94
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " startToRetrieveGroupChatList() version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 98
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mGroupChatMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 99
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 101
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForGroupChatListUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v4, 0x2

    invoke-interface {v3, p0, v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForGroupChatInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnImsi:Ljava/lang/String;

    invoke-interface {v3, v1, v2, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->subscribeGroupChatList(IZLjava/lang/String;)V

    .line 105
    return-void
.end method
