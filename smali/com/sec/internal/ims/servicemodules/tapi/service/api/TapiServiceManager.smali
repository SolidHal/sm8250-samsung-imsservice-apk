.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "TapiServiceManager.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/api/interfaces/ITapiServiceManager;


# static fields
.field private static mCapabilityServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

.field private static mChatServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

.field private static mContactServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

.field private static mFileTransferingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

.field private static mFileUploadServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;

.field private static mGeolocSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

.field private static mHistoryLogServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

.field private static mImageSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

.field private static mMultimediaSessionServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

.field private static mVideoSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mChatServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

    .line 39
    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mFileTransferingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

    .line 41
    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mFileUploadServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;

    .line 43
    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mImageSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

    .line 45
    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mGeolocSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

    .line 47
    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mVideoSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    .line 49
    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContactServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    .line 51
    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mCapabilityServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    .line 53
    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mMultimediaSessionServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

    .line 55
    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mHistoryLogServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 33
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->LOG_TAG:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->createTapiServices()V

    .line 63
    return-void
.end method

.method public static getCapService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;
    .locals 1

    .line 260
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mCapabilityServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    return-object v0
.end method

.method public static getChatService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;
    .locals 1

    .line 232
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mChatServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

    return-object v0
.end method

.method public static getContactService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;
    .locals 1

    .line 256
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContactServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    return-object v0
.end method

.method public static getFtService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;
    .locals 1

    .line 236
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mFileTransferingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

    return-object v0
.end method

.method public static getGlsService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;
    .locals 1

    .line 252
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mGeolocSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

    return-object v0
.end method

.method public static getHistoryService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;
    .locals 1

    .line 264
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mHistoryLogServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    return-object v0
.end method

.method public static getIshService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;
    .locals 1

    .line 244
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mImageSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

    return-object v0
.end method

.method public static getMulSessionService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;
    .locals 1

    .line 268
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mMultimediaSessionServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

    return-object v0
.end method

.method public static getVshService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;
    .locals 1

    .line 248
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mVideoSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    return-object v0
.end method

.method public static getfileUpService()Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;
    .locals 1

    .line 240
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mFileUploadServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;

    return-object v0
.end method

.method public static isSupportTapi()Z
    .locals 1

    .line 85
    invoke-static {}, Lcom/sec/internal/ims/util/TapiServiceUtil;->isSupportTapi()Z

    move-result v0

    return v0
.end method

.method public static setmCapabilityServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;)V
    .locals 0
    .param p0, "mCapabilityServiceImpl"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    .line 220
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mCapabilityServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    .line 221
    return-void
.end method

.method public static setmChatServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;)V
    .locals 0
    .param p0, "mChatServiceImpl"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

    .line 192
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mChatServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

    .line 193
    return-void
.end method

.method public static setmContactServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;)V
    .locals 0
    .param p0, "mContactServiceImpl"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    .line 216
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContactServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    .line 217
    return-void
.end method

.method public static setmFileTransferingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;)V
    .locals 0
    .param p0, "mFileTransferingServiceImpl"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

    .line 196
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mFileTransferingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

    .line 197
    return-void
.end method

.method public static setmFileUploadServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;)V
    .locals 0
    .param p0, "mFileUploadServiceImpl"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;

    .line 200
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mFileUploadServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;

    .line 201
    return-void
.end method

.method public static setmGeolocSharingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;)V
    .locals 0
    .param p0, "mGeolocSharingServiceImpl"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

    .line 208
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mGeolocSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

    .line 209
    return-void
.end method

.method public static setmHistoryLogServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;)V
    .locals 0
    .param p0, "mHistoryLogServiceImpl"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    .line 228
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mHistoryLogServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    .line 229
    return-void
.end method

.method public static setmImageSharingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;)V
    .locals 0
    .param p0, "mImageSharingServiceImpl"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

    .line 204
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mImageSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

    .line 205
    return-void
.end method

.method public static setmMultimediaSessionServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;)V
    .locals 0
    .param p0, "mMultimediaSessionServiceImpl"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

    .line 224
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mMultimediaSessionServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

    .line 225
    return-void
.end method

.method public static setmVideoSharingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;)V
    .locals 0
    .param p0, "mVideoSharingServiceImpl"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    .line 212
    sput-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mVideoSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    .line 213
    return-void
.end method


# virtual methods
.method public broadcastServiceUp()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "broadcastServiceUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->isSupportTapi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.action.SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "serviceUp":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    .end local v0    # "serviceUp":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public createTapiServices()V
    .locals 7

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createTapiServices"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    .line 152
    .local v0, "serviceModuleManager":Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v1

    .line 153
    .local v1, "imModule":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v1, :cond_0

    .line 154
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmFileTransferingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;)V

    .line 155
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmChatServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;)V

    .line 156
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmFileUploadServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;)V

    .line 159
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImageShareModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;

    move-result-object v2

    .line 160
    .local v2, "imageShareModule":Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;
    if-eqz v2, :cond_1

    .line 161
    new-instance v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

    invoke-direct {v3, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;)V

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmImageSharingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;)V

    .line 164
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getGlsModule()Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    move-result-object v3

    .line 165
    .local v3, "glsModule":Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;
    if-eqz v3, :cond_2

    .line 166
    new-instance v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;)V

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmGeolocSharingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;)V

    .line 169
    :cond_2
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVideoShareModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;

    move-result-object v4

    .line 170
    .local v4, "videoShareModule":Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;
    if-eqz v4, :cond_3

    .line 171
    new-instance v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    invoke-direct {v5, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;)V

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmVideoSharingServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;)V

    .line 174
    :cond_3
    new-instance v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmContactServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;)V

    .line 175
    new-instance v5, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmCapabilityServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;)V

    .line 177
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getSessionModule()Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    move-result-object v5

    .line 178
    .local v5, "sessionModule":Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;
    if-eqz v5, :cond_4

    .line 179
    new-instance v6, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

    invoke-direct {v6, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;)V

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmMultimediaSessionServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;)V

    .line 182
    :cond_4
    new-instance v6, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;

    invoke-direct {v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;-><init>()V

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->setmHistoryLogServiceImpl(Lcom/sec/internal/ims/servicemodules/tapi/service/api/HistoryLogServiceImpl;)V

    .line 184
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 185
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->updateTapiSettings()V

    .line 188
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->broadcastServiceUp()V

    .line 189
    return-void
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 8

    .line 406
    const-string v0, "im"

    const-string/jumbo v1, "slm"

    const-string v2, "ft"

    const-string v3, "ft_http"

    const-string/jumbo v4, "options"

    const-string/jumbo v5, "presence"

    const-string v6, "is"

    const-string/jumbo v7, "vs"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 431
    return-void
.end method

.method public notifyRegistrationStatusToTapiClient(ZI)V
    .locals 3
    .param p1, "status"    # Z
    .param p2, "errorCode"    # I

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRegistrationStatusToTapiClient : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    .line 100
    .local v0, "reasonCode":Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;
    const/16 v1, 0xc8

    if-eq p2, v1, :cond_0

    .line 101
    sget-object v0, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    .line 103
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->isSupportTapi()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 104
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mChatServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 108
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mFileTransferingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

    if-eqz v1, :cond_2

    .line 109
    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 112
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mFileUploadServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;

    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 116
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mImageSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;

    if-eqz v1, :cond_4

    .line 117
    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ImageSharingServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 122
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mGeolocSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

    if-eqz v1, :cond_5

    .line 123
    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 126
    :cond_5
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mVideoSharingServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;

    if-eqz v1, :cond_6

    .line 127
    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/VideoSharingServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 132
    :cond_6
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mCapabilityServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    if-eqz v1, :cond_7

    .line 133
    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 136
    :cond_7
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mMultimediaSessionServiceImpl:Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

    if-eqz v1, :cond_8

    .line 137
    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 146
    :cond_8
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 1
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 80
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->notifyRegistrationStatusToTapiClient(ZI)V

    .line 82
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 67
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered() services : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->updateSettings()V

    .line 71
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->updateTapiSettings()V

    .line 72
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->loadCCAndAC()V

    .line 73
    invoke-static {}, Lcom/sec/internal/ims/util/PhoneUtils;->initialize()V

    .line 75
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->notifyRegistrationStatusToTapiClient(ZI)V

    .line 76
    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "switchStatus"    # Landroid/content/ContentValues;

    .line 387
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ServiceSwitch not updated for defaultphoneId, return."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 393
    .local v0, "bIsRcsEnable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsServiceSwitch active:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/TapiServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 396
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 397
    .local v2, "values":Landroid/content/ContentValues;
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v3, "ServiceActivated"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "whereArgs":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "WHERE_CLAUSE":Ljava/lang/String;
    sget-object v5, Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v2, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 402
    return-void
.end method
