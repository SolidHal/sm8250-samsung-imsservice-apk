.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;
.super Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;
.source "ChatImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private contact:Lcom/gsma/services/rcs/contact/ContactId;

.field private mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

.field private mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field private mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p3, "module"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 68
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IOneToOneChat$Stub;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 55
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 59
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    .line 69
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->contact:Lcom/gsma/services/rcs/contact/ContactId;

    .line 70
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 71
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 72
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getGlsModule()Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    .line 73
    return-void
.end method


# virtual methods
.method public getCoreSession()Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    return-object v0
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->contact:Lcom/gsma/services/rcs/contact/ContactId;

    return-object v0
.end method

.method public isAllowedToSendMessage()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 219
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 220
    .local v0, "capx":Lcom/sec/ims/options/Capabilities;
    if-eqz v0, :cond_0

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public openChat()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public resendMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : resendMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->resendMessage(I)V

    .line 94
    return-void
.end method

.method public sendGeoloc(Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/chat/IChatMessage;
    .locals 12
    .param p1, "geoloc"    # Lcom/gsma/services/rcs/Geoloc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : send Geolocation Message()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "location":Landroid/location/Location;
    invoke-virtual {p1}, Lcom/gsma/services/rcs/Geoloc;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 176
    invoke-virtual {p1}, Lcom/gsma/services/rcs/Geoloc;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 177
    invoke-virtual {p1}, Lcom/gsma/services/rcs/Geoloc;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "imMessage":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 182
    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 183
    invoke-virtual {p1}, Lcom/gsma/services/rcs/Geoloc;->getLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 184
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 181
    move-object v5, v0

    invoke-interface/range {v2 .. v11}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->shareLocationInChat(Ljava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 185
    .local v2, "imMessageFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/sec/internal/ims/servicemodules/im/ImMessage;>;"
    if-eqz v2, :cond_0

    .line 186
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-object v1, v3

    .line 188
    :cond_0
    if-eqz v1, :cond_1

    .line 191
    new-instance v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 189
    :cond_1
    new-instance v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string v4, "Can not make a message"

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    .end local v0    # "location":Landroid/location/Location;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;
    .end local p1    # "geoloc":Lcom/gsma/services/rcs/Geoloc;
    throw v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1    # "imMessage":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .end local v2    # "imMessageFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/sec/internal/ims/servicemodules/im/ImMessage;>;"
    .restart local v0    # "location":Landroid/location/Location;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;
    .restart local p1    # "geoloc":Lcom/gsma/services/rcs/Geoloc;
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 192
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 196
    .end local v1    # "e":Ljava/lang/InterruptedException;
    nop

    .line 198
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public sendIsComposingEvent(Z)V
    .locals 2
    .param p1, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : sendIsComposingEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendComposing(ZI)V

    .line 212
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;
    .locals 21
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 134
    move-object/from16 v1, p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "start : sendMessage()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->contact:Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string v4, "chat"

    const-string/jumbo v5, "text/plain"

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v3, v0

    invoke-interface/range {v2 .. v7}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->createChat(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 143
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 145
    .end local v0    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/util/ImsUri;>;"
    :cond_0
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 146
    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    const-string/jumbo v7, "text/plain"

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 145
    move-object/from16 v5, p1

    invoke-interface/range {v3 .. v20}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 150
    .local v0, "imMessage":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    if-eqz v0, :cond_1

    .line 154
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatMessageImpl;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 151
    :cond_1
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string v3, "Can not make a message"

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;
    .end local p1    # "message":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v0    # "imMessage":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;
    .restart local p1    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 159
    .end local v0    # "e":Ljava/lang/InterruptedException;
    nop

    .line 161
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setComposingStatus(Z)V
    .locals 2
    .param p1, "ongoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : setComposingStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    if-eqz v0, :cond_0

    .line 228
    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendComposing(ZI)V

    .line 230
    :cond_0
    return-void
.end method
