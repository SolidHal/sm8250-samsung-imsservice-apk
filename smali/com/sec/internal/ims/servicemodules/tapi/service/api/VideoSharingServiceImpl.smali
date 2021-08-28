.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;
.super Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;
.source "VideoSharingServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IRegistrationStatusBroadcaster;


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static videoSharingSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/sharing/video/IVideoSharing;",
            ">;"
        }
    .end annotation
.end field

.field private static vshModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;


# instance fields
.field private eventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

.field private serviceListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->vshModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;

    .line 75
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;)V
    .locals 1
    .param p1, "service"    # Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;

    .line 132
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;-><init>()V

    .line 47
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    .line 59
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->eventListeners:Landroid/os/RemoteCallbackList;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->lock:Ljava/lang/Object;

    .line 133
    sput-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->vshModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;

    .line 135
    return-void
.end method

.method protected static addVideoSharingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;)V
    .locals 3
    .param p0, "sessionId"    # Ljava/lang/String;
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;

    .line 150
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add a vsh session (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : sessionid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public static getModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;
    .locals 1

    .line 141
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->vshModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;

    return-object v0
.end method

.method protected static removeVideoSharingSession(Ljava/lang/String;)V
    .locals 3
    .param p0, "sessionId"    # Ljava/lang/String;

    .line 161
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove a vsh session (size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : sessionid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->eventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 424
    monitor-exit v0

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 195
    monitor-exit v0

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteVideoSharing(Ljava/lang/String;)V
    .locals 4
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete video sharing session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v0, "sharingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 316
    .local v1, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    const/4 v2, 0x0

    .line 317
    .local v2, "contacturi":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    :try_start_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v3}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getRemoteContact()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 322
    goto :goto_0

    .line 320
    :catch_0
    move-exception v3

    .line 321
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 323
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v3, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v3, v2}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 324
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->handleVideoSessionDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V

    .line 328
    :cond_0
    return-void
.end method

.method public deleteVideoSharings()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 409
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 412
    :cond_0
    return-void
.end method

.method public deleteVideoSharingsByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 3
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    if-nez p1, :cond_0

    .line 491
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Cannot delete video sharing session, contact is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void

    .line 495
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete video sharing session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_1
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 290
    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->vshModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;->getMaxDurationTime()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;-><init>(J)V

    return-object v0
.end method

.method public getVideoSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    .locals 3
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 302
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get video sharing session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    return-object v0
.end method

.method public getVideoSharingByID(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;
    .locals 3
    .param p1, "sharingId"    # Ljava/lang/String;

    .line 336
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get video sharing session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; videoSharingSessions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    .line 338
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;

    return-object v0
.end method

.method public getVideoSharings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 393
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->videoSharingSessions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 394
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/gsma/services/rcs/sharing/video/IVideoSharing;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    .line 396
    .local v2, "sessionApi":Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    invoke-interface {v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v2    # "sessionApi":Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    goto :goto_0

    .line 398
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/gsma/services/rcs/sharing/video/IVideoSharing;>;"
    :cond_0
    return-object v0
.end method

.method public handleVideoSessionDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    .locals 6
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 690
    .local p2, "sharingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleVideoSessionDeleted: contactid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,sharingIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->eventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 696
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->eventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;

    invoke-interface {v3, p1, p2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;->onDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    goto :goto_1

    .line 697
    :catch_0
    move-exception v3

    .line 698
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Can\'t notify listener"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 694
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 701
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->eventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 702
    .end local v1    # "N":I
    monitor-exit v0

    .line 703
    return-void

    .line 702
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isServiceRegistered()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 174
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 175
    .local v0, "manager":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 176
    return v1

    .line 178
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 179
    .local v2, "registration":[Lcom/sec/ims/ImsRegistration;
    aget-object v1, v2, v1

    const-string/jumbo v3, "vs"

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    .line 181
    .local v1, "isReg":Z
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isServiceRegistered() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return v1
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .locals 6
    .param p1, "registered"    # Z
    .param p2, "code"    # Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 224
    if-eqz p1, :cond_0

    .line 225
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_1

    .line 227
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3, p2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :goto_1
    goto :goto_2

    .line 229
    :catch_0
    move-exception v3

    .line 230
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Can\'t notify listener"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 234
    .end local v1    # "N":I
    monitor-exit v0

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->eventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 437
    monitor-exit v0

    .line 438
    return-void

    .line 437
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 208
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shareVideo(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    .locals 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "player"    # Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 451
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 452
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Cannot initiate a live video session, contact is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-object v0

    .line 456
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initiate a live video session with contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    if-eqz p2, :cond_2

    .line 462
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->vshModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const-string v3, "com.sec.rcs.videosharing.LIVE_VIDEO_CONTENTPATH"

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;->createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 463
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    .line 464
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    if-eqz v1, :cond_1

    .line 470
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;

    invoke-direct {v2, v1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)V

    .line 471
    .local v2, "sessionApi":Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->addVideoSharingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;)V

    .line 472
    return-object v2

    .line 465
    .end local v2    # "sessionApi":Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingImpl;
    :cond_1
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string/jumbo v3, "session is null"

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;
    .end local p1    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    .end local p2    # "player":Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;
    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;
    .restart local p1    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    .restart local p2    # "player":Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;
    :catch_0
    move-exception v1

    .line 476
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 473
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 474
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 477
    .end local v1    # "e":Ljava/lang/InterruptedException;
    nop

    .line 479
    :goto_0
    return-object v0

    .line 458
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string v1, "Missing video player"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
