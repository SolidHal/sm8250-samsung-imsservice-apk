.class public Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;
.super Lcom/sec/internal/ims/core/handler/HandlerFactory;
.source "ResipHandlerFactory.java"


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 2
    .param p1, "serviceLooper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 27
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/HandlerFactory;-><init>(Landroid/os/Looper;)V

    .line 29
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mRegistrationHandler:Lcom/sec/internal/ims/core/handler/RegistrationHandler;

    .line 31
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mAndroidVolteHandler:Lcom/sec/internal/ims/core/handler/VolteHandler;

    .line 33
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mMediaHandler:Lcom/sec/internal/ims/core/handler/MediaHandler;

    .line 34
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mVshHandler:Lcom/sec/internal/ims/core/handler/VshHandler;

    .line 35
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;

    invoke-direct {v0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mIshHandler:Lcom/sec/internal/ims/core/handler/IshHandler;

    .line 37
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;

    invoke-direct {v0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mSmsHandler:Lcom/sec/internal/ims/core/handler/SmsHandler;

    .line 38
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;

    invoke-direct {v0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mOptionsHandler:Lcom/sec/internal/ims/core/handler/OptionsHandler;

    .line 39
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;

    invoke-direct {v0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mPresenceHandler:Lcom/sec/internal/ims/core/handler/PresenceHandler;

    .line 41
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-direct {v0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 42
    .local v0, "imdnHandler":Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-direct {v1, p1, p3, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;)V

    sput-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mImHandler:Lcom/sec/internal/ims/core/handler/ImHandler;

    .line 43
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    invoke-direct {v1, p1, p3, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;)V

    sput-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mSlmHandler:Lcom/sec/internal/ims/core/handler/SlmHandler;

    .line 44
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;

    invoke-direct {v1, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    sput-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mEucHandler:Lcom/sec/internal/ims/core/handler/EucHandler;

    .line 45
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipMiscHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    sput-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mMiscHandler:Lcom/sec/internal/ims/core/handler/MiscHandler;

    .line 46
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;

    invoke-direct {v1, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    sput-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mRawSipHandler:Lcom/sec/internal/ims/core/handler/RawSipHandler;

    .line 47
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    sput-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mCmcHandler:Lcom/sec/internal/ims/core/handler/CmcHandler;

    .line 50
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory$1;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;Landroid/os/Looper;)V

    sput-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mVolteHandler:Lcom/sec/internal/ims/core/handler/VolteHandler;

    .line 52
    return-void
.end method


# virtual methods
.method public getMiscHandler()Lcom/sec/internal/ims/core/handler/MiscHandler;
    .locals 1

    .line 72
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mMiscHandler:Lcom/sec/internal/ims/core/handler/MiscHandler;

    return-object v0
.end method

.method public bridge synthetic getMiscHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->getMiscHandler()Lcom/sec/internal/ims/core/handler/MiscHandler;

    move-result-object v0

    return-object v0
.end method

.method public getRawSipHandler()Lcom/sec/internal/ims/core/handler/RawSipHandler;
    .locals 1

    .line 67
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mRawSipHandler:Lcom/sec/internal/ims/core/handler/RawSipHandler;

    return-object v0
.end method

.method public bridge synthetic getRawSipHandler()Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->getRawSipHandler()Lcom/sec/internal/ims/core/handler/RawSipHandler;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationStackAdaptor()Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;
    .locals 1

    .line 56
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mRegistrationHandler:Lcom/sec/internal/ims/core/handler/RegistrationHandler;

    return-object v0
.end method

.method public getVolteStackAdaptor()Lcom/sec/internal/ims/core/handler/VolteHandler;
    .locals 1

    .line 61
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->mAndroidVolteHandler:Lcom/sec/internal/ims/core/handler/VolteHandler;

    return-object v0
.end method

.method public bridge synthetic getVolteStackAdaptor()Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;->getVolteStackAdaptor()Lcom/sec/internal/ims/core/handler/VolteHandler;

    move-result-object v0

    return-object v0
.end method
