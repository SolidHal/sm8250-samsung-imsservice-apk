.class public abstract Lcom/sec/internal/ims/core/handler/HandlerFactory;
.super Ljava/lang/Object;
.source "HandlerFactory.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;


# static fields
.field protected static mAndroidVolteHandler:Lcom/sec/internal/ims/core/handler/VolteHandler;

.field protected static mCmcHandler:Lcom/sec/internal/ims/core/handler/CmcHandler;

.field protected static mEucHandler:Lcom/sec/internal/ims/core/handler/EucHandler;

.field protected static mImHandler:Lcom/sec/internal/ims/core/handler/ImHandler;

.field protected static mIshHandler:Lcom/sec/internal/ims/core/handler/IshHandler;

.field protected static mMediaHandler:Lcom/sec/internal/ims/core/handler/MediaHandler;

.field protected static mMiscHandler:Lcom/sec/internal/ims/core/handler/MiscHandler;

.field protected static mOptionsHandler:Lcom/sec/internal/ims/core/handler/OptionsHandler;

.field protected static mPresenceHandler:Lcom/sec/internal/ims/core/handler/PresenceHandler;

.field protected static mRawSipHandler:Lcom/sec/internal/ims/core/handler/RawSipHandler;

.field protected static mRegistrationHandler:Lcom/sec/internal/ims/core/handler/RegistrationHandler;

.field protected static mSlmHandler:Lcom/sec/internal/ims/core/handler/SlmHandler;

.field protected static mSmsHandler:Lcom/sec/internal/ims/core/handler/SmsHandler;

.field protected static mVolteHandler:Lcom/sec/internal/ims/core/handler/VolteHandler;

.field protected static mVshHandler:Lcom/sec/internal/ims/core/handler/VshHandler;

.field private static sHandlerInstance:Lcom/sec/internal/ims/core/handler/HandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mRegistrationHandler:Lcom/sec/internal/ims/core/handler/RegistrationHandler;

    .line 30
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mVolteHandler:Lcom/sec/internal/ims/core/handler/VolteHandler;

    .line 31
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mAndroidVolteHandler:Lcom/sec/internal/ims/core/handler/VolteHandler;

    .line 32
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mEucHandler:Lcom/sec/internal/ims/core/handler/EucHandler;

    .line 33
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mImHandler:Lcom/sec/internal/ims/core/handler/ImHandler;

    .line 34
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mIshHandler:Lcom/sec/internal/ims/core/handler/IshHandler;

    .line 35
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mOptionsHandler:Lcom/sec/internal/ims/core/handler/OptionsHandler;

    .line 36
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mPresenceHandler:Lcom/sec/internal/ims/core/handler/PresenceHandler;

    .line 37
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mSmsHandler:Lcom/sec/internal/ims/core/handler/SmsHandler;

    .line 38
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mVshHandler:Lcom/sec/internal/ims/core/handler/VshHandler;

    .line 39
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mSlmHandler:Lcom/sec/internal/ims/core/handler/SlmHandler;

    .line 40
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mMediaHandler:Lcom/sec/internal/ims/core/handler/MediaHandler;

    .line 41
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mMiscHandler:Lcom/sec/internal/ims/core/handler/MiscHandler;

    .line 42
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mRawSipHandler:Lcom/sec/internal/ims/core/handler/RawSipHandler;

    .line 43
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mCmcHandler:Lcom/sec/internal/ims/core/handler/CmcHandler;

    .line 45
    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->sHandlerInstance:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "serviceLooper"    # Landroid/os/Looper;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static createStackHandler(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)Lcom/sec/internal/ims/core/handler/HandlerFactory;
    .locals 1
    .param p0, "serviceLooper"    # Landroid/os/Looper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 48
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->setImsFramework(Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 49
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipHandlerFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    sput-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->sHandlerInstance:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    .line 50
    return-object v0
.end method


# virtual methods
.method public getCmcHandler()Lcom/sec/internal/ims/core/handler/CmcHandler;
    .locals 1

    .line 139
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mCmcHandler:Lcom/sec/internal/ims/core/handler/CmcHandler;

    return-object v0
.end method

.method public bridge synthetic getCmcHandler()Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->getCmcHandler()Lcom/sec/internal/ims/core/handler/CmcHandler;

    move-result-object v0

    return-object v0
.end method

.method public getEucHandler()Lcom/sec/internal/ims/core/handler/EucHandler;
    .locals 1

    .line 96
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mEucHandler:Lcom/sec/internal/ims/core/handler/EucHandler;

    return-object v0
.end method

.method public bridge synthetic getEucHandler()Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->getEucHandler()Lcom/sec/internal/ims/core/handler/EucHandler;

    move-result-object v0

    return-object v0
.end method

.method public getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .locals 1

    .line 101
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mImHandler:Lcom/sec/internal/ims/core/handler/ImHandler;

    return-object v0
.end method

.method public getIshHandler()Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;
    .locals 1

    .line 105
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mIshHandler:Lcom/sec/internal/ims/core/handler/IshHandler;

    return-object v0
.end method

.method public getMediaHandler()Lcom/sec/internal/ims/core/handler/MediaHandler;
    .locals 1

    .line 92
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mMediaHandler:Lcom/sec/internal/ims/core/handler/MediaHandler;

    return-object v0
.end method

.method public bridge synthetic getMediaHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->getMediaHandler()Lcom/sec/internal/ims/core/handler/MediaHandler;

    move-result-object v0

    return-object v0
.end method

.method public getMiscHandler()Lcom/sec/internal/ims/core/handler/MiscHandler;
    .locals 1

    .line 134
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mMiscHandler:Lcom/sec/internal/ims/core/handler/MiscHandler;

    return-object v0
.end method

.method public bridge synthetic getMiscHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->getMiscHandler()Lcom/sec/internal/ims/core/handler/MiscHandler;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsHandler()Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;
    .locals 1

    .line 109
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mOptionsHandler:Lcom/sec/internal/ims/core/handler/OptionsHandler;

    return-object v0
.end method

.method public getPresenceHandler()Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;
    .locals 1

    .line 113
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mPresenceHandler:Lcom/sec/internal/ims/core/handler/PresenceHandler;

    return-object v0
.end method

.method public getRawSipHandler()Lcom/sec/internal/ims/core/handler/RawSipHandler;
    .locals 1

    .line 130
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mRawSipHandler:Lcom/sec/internal/ims/core/handler/RawSipHandler;

    return-object v0
.end method

.method public bridge synthetic getRawSipHandler()Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->getRawSipHandler()Lcom/sec/internal/ims/core/handler/RawSipHandler;

    move-result-object v0

    return-object v0
.end method

.method public getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;
    .locals 1

    .line 126
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mSlmHandler:Lcom/sec/internal/ims/core/handler/SlmHandler;

    return-object v0
.end method

.method public getSmsHandler()Lcom/sec/internal/ims/core/handler/SmsHandler;
    .locals 1

    .line 117
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mSmsHandler:Lcom/sec/internal/ims/core/handler/SmsHandler;

    return-object v0
.end method

.method public bridge synthetic getSmsHandler()Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->getSmsHandler()Lcom/sec/internal/ims/core/handler/SmsHandler;

    move-result-object v0

    return-object v0
.end method

.method public getVolteStackAdaptor()Lcom/sec/internal/ims/core/handler/VolteHandler;
    .locals 1

    .line 87
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mVolteHandler:Lcom/sec/internal/ims/core/handler/VolteHandler;

    return-object v0
.end method

.method public bridge synthetic getVolteStackAdaptor()Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->getVolteStackAdaptor()Lcom/sec/internal/ims/core/handler/VolteHandler;

    move-result-object v0

    return-object v0
.end method

.method public getVshHandler()Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;
    .locals 1

    .line 121
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mVshHandler:Lcom/sec/internal/ims/core/handler/VshHandler;

    return-object v0
.end method

.method public initSequentially()V
    .locals 2

    .line 58
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mRegistrationHandler:Lcom/sec/internal/ims/core/handler/RegistrationHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/RegistrationHandler;->init()V

    .line 60
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mVolteHandler:Lcom/sec/internal/ims/core/handler/VolteHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/VolteHandler;->init()V

    .line 61
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mAndroidVolteHandler:Lcom/sec/internal/ims/core/handler/VolteHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/VolteHandler;->init()V

    .line 62
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mMediaHandler:Lcom/sec/internal/ims/core/handler/MediaHandler;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/MediaHandler;->init()V

    .line 65
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mEucHandler:Lcom/sec/internal/ims/core/handler/EucHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/EucHandler;->init()V

    .line 66
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mImHandler:Lcom/sec/internal/ims/core/handler/ImHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/ImHandler;->init()V

    .line 67
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mIshHandler:Lcom/sec/internal/ims/core/handler/IshHandler;

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/IshHandler;->init()V

    .line 70
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mOptionsHandler:Lcom/sec/internal/ims/core/handler/OptionsHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/OptionsHandler;->init()V

    .line 71
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mPresenceHandler:Lcom/sec/internal/ims/core/handler/PresenceHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/PresenceHandler;->init()V

    .line 72
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mSmsHandler:Lcom/sec/internal/ims/core/handler/SmsHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/SmsHandler;->init()V

    .line 73
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mSlmHandler:Lcom/sec/internal/ims/core/handler/SlmHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/SlmHandler;->init()V

    .line 74
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mVshHandler:Lcom/sec/internal/ims/core/handler/VshHandler;

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/VshHandler;->init()V

    .line 77
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mMiscHandler:Lcom/sec/internal/ims/core/handler/MiscHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/MiscHandler;->init()V

    .line 78
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mRawSipHandler:Lcom/sec/internal/ims/core/handler/RawSipHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/RawSipHandler;->init()V

    .line 79
    sget-object v0, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mCmcHandler:Lcom/sec/internal/ims/core/handler/CmcHandler;

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/CmcHandler;->init()V

    .line 82
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mMediaHandler:Lcom/sec/internal/ims/core/handler/MediaHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->initMediaJni(Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/handler/HandlerFactory;->mCmcHandler:Lcom/sec/internal/ims/core/handler/CmcHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->initCmcJni(Ljava/lang/Object;)V

    .line 84
    return-void
.end method
