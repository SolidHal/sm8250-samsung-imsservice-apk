.class public Lcom/sec/internal/ims/imsservice/TapiService;
.super Lcom/sec/internal/ims/imsservice/ImsServiceBase;
.source "TapiService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/sec/internal/ims/imsservice/TapiService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/TapiService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;-><init>()V

    return-void
.end method

.method public static isTAPISupported()Z
    .locals 1

    .line 96
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->isSupportTapi()Z

    move-result v0

    return v0
.end method

.method private static isTapiAuthorised(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 100
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isAppAuthorised(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 44
    sget-object v0, Lcom/sec/internal/ims/imsservice/TapiService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind: intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->isTapiAuthorisationSupports()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 47
    const-string v0, ""

    .line 48
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "packages"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/TapiService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/internal/ims/imsservice/TapiService;->isTapiAuthorised(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    sget-object v2, Lcom/sec/internal/ims/imsservice/TapiService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client package is not authorized"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-object v1

    .line 58
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/imsservice/TapiService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "packagename is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-object v1

    .line 62
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    sget-object v0, Lcom/sec/internal/ims/imsservice/TapiService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Do not allow bind on non-system user"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-object v1

    .line 67
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/imsservice/TapiService;->isTAPISupported()Z

    move-result v0

    if-nez v0, :cond_4

    .line 68
    return-object v1

    .line 70
    :cond_4
    const-class v0, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getIshService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

    move-result-object v0

    return-object v0

    .line 72
    :cond_5
    const-class v0, Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getCapService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    move-result-object v0

    return-object v0

    .line 74
    :cond_6
    const-class v0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 75
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getVshService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    move-result-object v0

    return-object v0

    .line 76
    :cond_7
    const-class v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 77
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getFtService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

    move-result-object v0

    return-object v0

    .line 78
    :cond_8
    const-class v0, Lcom/gsma/services/rcs/chat/IChatService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 79
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getChatService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

    move-result-object v0

    return-object v0

    .line 80
    :cond_9
    const-class v0, Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 81
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getfileUpService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;

    move-result-object v0

    return-object v0

    .line 82
    :cond_a
    const-class v0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 83
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getGlsService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

    move-result-object v0

    return-object v0

    .line 84
    :cond_b
    const-class v0, Lcom/gsma/services/rcs/contact/IContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 85
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getContactService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    move-result-object v0

    return-object v0

    .line 86
    :cond_c
    const-class v0, Lcom/gsma/services/rcs/history/IHistoryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 87
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getHistoryService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    move-result-object v0

    return-object v0

    .line 88
    :cond_d
    const-class v0, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 89
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getMulSessionService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

    move-result-object v0

    return-object v0

    .line 92
    :cond_e
    return-object v1
.end method

.method public onCreate()V
    .locals 2

    .line 38
    invoke-super {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceBase;->onCreate()V

    .line 39
    sget-object v0, Lcom/sec/internal/ims/imsservice/TapiService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
