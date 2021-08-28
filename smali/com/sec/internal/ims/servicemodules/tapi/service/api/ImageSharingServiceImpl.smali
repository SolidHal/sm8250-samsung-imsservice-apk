.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;
.super Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;
.source "ImageSharingServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IRegistrationStatusBroadcaster;
.implements Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private ishModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;

.field private mImageSharingListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIshListenerLock:Ljava/lang/Object;

.field private mIshSessionsMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/sharing/image/IImageSharing;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceListenerlock:Ljava/lang/Object;

.field private mServiceListeners:Landroid/os/RemoteCallbackList;
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

    .line 48
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;)V
    .locals 1
    .param p1, "service"    # Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;

    .line 87
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;-><init>()V

    .line 52
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    .line 58
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mImageSharingListeners:Landroid/os/RemoteCallbackList;

    .line 64
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->ishModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListenerlock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshListenerLock:Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->ishModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;

    .line 91
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;->registerImageShareEventListener(Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;)V

    .line 95
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mImageSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 334
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addImageSharingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;)V
    .locals 1
    .param p1, "sharedId"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public addServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListenerlock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 248
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteAllImageSharings()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/gsma/services/rcs/sharing/image/IImageSharing;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    .line 353
    .local v1, "sessionApi":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->abortSharing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v1    # "sessionApi":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    goto :goto_0

    .line 357
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/gsma/services/rcs/sharing/image/IImageSharing;>;"
    :cond_0
    nop

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 360
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deleteImageSharing(Ljava/lang/String;)V
    .locals 2
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    .line 378
    .local v0, "ish":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->abortSharing()V

    .line 380
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_0
    return-void
.end method

.method public deleteImageSharings(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 4
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 365
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 367
    .local v1, "sharingid":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    .line 368
    .local v2, "ish":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    invoke-interface {v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/gsma/services/rcs/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    invoke-interface {v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->abortSharing()V

    .line 370
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .end local v1    # "sharingid":Ljava/lang/String;
    .end local v2    # "ish":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    :cond_0
    goto :goto_0

    .line 373
    :cond_1
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;
    .locals 5

    .line 270
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->ishModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;->getMaxSize()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->ishModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;

    .line 271
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;->getWarnSize()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;-><init>(JJ)V

    .line 270
    return-object v0
.end method

.method public getImageSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    .locals 1
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    return-object v0
.end method

.method public getImageSharings()Ljava/util/List;
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
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/gsma/services/rcs/sharing/image/IImageSharing;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    .line 285
    .local v2, "sessionApi":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    invoke-interface {v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    nop

    .end local v2    # "sessionApi":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    goto :goto_0

    .line 287
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/gsma/services/rcs/sharing/image/IImageSharing;>;"
    :cond_0
    return-object v0

    .line 288
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getServiceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public isServiceRegistered()Z
    .locals 6

    .line 229
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 230
    .local v0, "manager":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 231
    return v1

    .line 233
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 234
    .local v2, "registration":[Lcom/sec/ims/ImsRegistration;
    aget-object v1, v2, v1

    const-string v3, "is"

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    .line 235
    .local v1, "isReg":Z
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isServiceRegistered() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v1
.end method

.method public notifyImageSharingProgress(Ljava/lang/String;J)V
    .locals 11
    .param p1, "sharedId"    # Ljava/lang/String;
    .param p2, "currentSize"    # J

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshSessionsMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;

    .line 177
    .local v1, "ishSession":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;
    if-nez v1, :cond_0

    .line 178
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "notifyImageSharingProgress(): session is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    monitor-exit v0

    return-void

    .line 182
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v3

    .line 183
    .local v3, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->getSharingId()Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "sharingId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->getFileSize()J

    move-result-wide v7

    .line 186
    .local v7, "totalSize":J
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mImageSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v2

    .line 187
    .local v9, "N":I
    const/4 v2, 0x0

    move v10, v2

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_1

    .line 189
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mImageSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;

    move-wide v5, p2

    invoke-interface/range {v2 .. v8}, Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;->onProgressUpdate(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    goto :goto_1

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e1":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 187
    .end local v2    # "e1":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 196
    .end local v10    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mImageSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 197
    .end local v1    # "ishSession":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;
    .end local v3    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v4    # "sharingId":Ljava/lang/String;
    .end local v7    # "totalSize":J
    .end local v9    # "N":I
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .locals 4
    .param p1, "registered"    # Z
    .param p2, "code"    # Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListenerlock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 130
    if-eqz p1, :cond_0

    .line 131
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_1

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3, p2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :goto_1
    goto :goto_2

    .line 135
    :catch_0
    move-exception v3

    .line 128
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "i":I
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 140
    .end local v1    # "N":I
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onIshTransferProgressEvent(Ljava/lang/String;J)V
    .locals 0
    .param p1, "shareId"    # Ljava/lang/String;
    .param p2, "progress"    # J

    .line 386
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->notifyImageSharingProgress(Ljava/lang/String;J)V

    .line 387
    return-void
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mIshListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mImageSharingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 341
    monitor-exit v0

    .line 342
    return-void

    .line 341
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

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListenerlock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 260
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shareImage(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    .locals 6
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "fileUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 312
    .local v0, "contactUri":Lcom/sec/ims/util/ImsUri;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->ishModule:Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;

    invoke-interface {v1, v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;->createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    .line 313
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    if-eqz v1, :cond_0

    .line 317
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    .line 318
    .local v2, "sessionImpl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shareImage: sharingId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->getSharingId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;->getSharingId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->addImageSharingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;)V

    .line 320
    return-object v2

    .line 314
    .end local v2    # "sessionImpl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingImpl;
    :cond_0
    new-instance v2, Landroid/os/RemoteException;

    const-string/jumbo v3, "session is null"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "contactUri":Lcom/sec/ims/util/ImsUri;
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;
    .end local p1    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    .end local p2    # "fileUri":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    .restart local v0    # "contactUri":Lcom/sec/ims/util/ImsUri;
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;
    .restart local p1    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    .restart local p2    # "fileUri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 321
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 325
    .end local v1    # "e":Ljava/lang/InterruptedException;
    nop

    .line 327
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method
