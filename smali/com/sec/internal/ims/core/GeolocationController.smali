.class public Lcom/sec/internal/ims/core/GeolocationController;
.super Landroid/os/Handler;
.source "GeolocationController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IGeolocationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/GeolocationController$IntentListener;,
        Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final EVENT_EPDG_AVAILABLE:I = 0x5

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x4

.field public static final EVENT_START_LOCATION_UPDATE:I = 0x1

.field private static final EVENT_START_PERIODIC_LOCATION_UPDATE:I = 0x3

.field public static final EVENT_STOP_LOCATION_UPDATE:I = 0x2

.field private static final INTENT_EPDG_SSID_CHANGED:Ljava/lang/String; = "com.sec.epdg.EPDG_SSID_CHANGED"

.field private static final INTENT_PERIODIC_LOCATION_UPDATE_TIMER_EXPD:Ljava/lang/String; = "com.sec.internal.ims.imsservice.periodic_lu"

.field private static final INTENT_PROVIDERS_CHANGED:Ljava/lang/String; = "android.location.PROVIDERS_CHANGED"

.field private static final LOG_TAG:Ljava/lang/String; = "GeolocationCon"


# instance fields
.field private final LOCATION_REQUEST_TIMEOUT:I

.field private final PERIODIC_LOCATION_TIME:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private mCountryIso:Ljava/lang/String;

.field private mDataRegState:[I

.field mDtLocUserConsentObserver:Landroid/database/ContentObserver;

.field private mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

.field private mGeolocationListener:Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;

.field private final mIntentListener:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

.field protected mIsEpdgAvaialble:[Z

.field private mIsForceEpdgAvailUpdate:[Z

.field private mIsLocationEnabled:Z

.field private mIsLocationEnabledToRestore:Z

.field private mIsLocationUserConsent:[I

.field private mIsRequested:Z

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateHandler:Landroid/os/Handler;

.field private mLocationUpdateThread:Landroid/os/HandlerThread;

.field private final mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field private final mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mVoiceRegState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/ims/core/GeolocationController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/core/RegistrationManagerBase;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "registrationManager"    # Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 102
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    const v0, 0xafc8

    iput v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->LOCATION_REQUEST_TIMEOUT:I

    .line 77
    const v0, 0x1b7740

    iput v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->PERIODIC_LOCATION_TIME:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocationListener:Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;

    .line 89
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsRequested:Z

    .line 94
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabled:Z

    .line 95
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabledToRestore:Z

    .line 733
    new-instance v2, Lcom/sec/internal/ims/core/GeolocationController$2;

    invoke-direct {v2, p0, p0}, Lcom/sec/internal/ims/core/GeolocationController$2;-><init>(Lcom/sec/internal/ims/core/GeolocationController;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mDtLocUserConsentObserver:Landroid/database/ContentObserver;

    .line 104
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 106
    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v2

    .line 107
    .local v2, "phoneCount":I
    iput-object p3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 109
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    .line 110
    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    .line 111
    new-instance v3, Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;

    invoke-direct {v3, p0, v0}, Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;-><init>(Lcom/sec/internal/ims/core/GeolocationController;Lcom/sec/internal/ims/core/GeolocationController$1;)V

    iput-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocationListener:Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;

    .line 112
    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 114
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mDataRegState:[I

    .line 115
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    .line 116
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationUserConsent:[I

    .line 117
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsForceEpdgAvailUpdate:[Z

    .line 118
    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 119
    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mDataRegState:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 120
    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 121
    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationUserConsent:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 122
    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsForceEpdgAvailUpdate:[Z

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 124
    new-instance v1, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;-><init>(Lcom/sec/internal/ims/core/GeolocationController;Lcom/sec/internal/ims/core/GeolocationController$1;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIntentListener:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    .line 125
    invoke-direct {p0}, Lcom/sec/internal/ims/core/GeolocationController;->registerDtLocUserConsentObserver()V

    .line 126
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/core/GeolocationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;

    .line 61
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/internal/ims/core/GeolocationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;
    .param p1, "x1"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabled:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/sec/internal/ims/core/GeolocationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;
    .param p1, "x1"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabledToRestore:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/core/GeolocationController;)Lcom/sec/internal/helper/os/ITelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/core/GeolocationController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationUserConsent:[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/core/GeolocationController;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsForceEpdgAvailUpdate:[Z

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/internal/ims/core/GeolocationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;
    .param p1, "x1"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsRequested:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/GeolocationController;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/GeolocationController;->requestLocationUpdate(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/GeolocationController;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;
    .param p1, "x1"    # Landroid/location/Location;

    .line 61
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->updateGeolocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/GeolocationController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/internal/ims/core/GeolocationController;Lcom/sec/internal/constants/ims/gls/LocationInfo;)Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;
    .param p1, "x1"    # Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 61
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/core/GeolocationController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->startPeriodicLocationUpdate(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/core/GeolocationController;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/GeolocationController;

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method private enableLocationSettings()V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabledToRestore:Z

    .line 486
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabled:Z

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLocationSettings : restore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabledToRestore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 3

    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, "lastKnownLocation":Landroid/location/Location;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "fused"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 343
    goto :goto_0

    .line 341
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 344
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    if-nez v0, :cond_0

    .line 346
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 349
    goto :goto_1

    .line 347
    :catch_1
    move-exception v1

    .line 348
    .restart local v1    # "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 351
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 353
    :try_start_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 356
    goto :goto_2

    .line 354
    :catch_2
    move-exception v1

    .line 355
    .restart local v1    # "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 359
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    .line 360
    const-string v1, "can not find lastKnownLocation"

    goto :goto_3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastKnownLocation from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    :goto_3
    const-string v2, "GeolocationCon"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-object v0
.end method

.method private getRetryRequestLocationIntent(I)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "phoneId"    # I

    .line 523
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 524
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.internal.ims.imsservice.periodic_lu"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string/jumbo v1, "phoneId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 526
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private isValidLocation(ILandroid/location/Location;)Z
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "location"    # Landroid/location/Location;

    .line 309
    const-string v0, "GeolocationCon"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 310
    const-string v2, "isValidLocation : location is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return v1

    .line 312
    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    const-string v2, "isValidLocation : location from Mock Provider"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v2, 0x29

    invoke-virtual {v0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    .line 322
    return v1

    .line 324
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 325
    .local v2, "currentTime":J
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    .line 326
    .local v4, "locationTime":J
    nop

    .line 327
    const-string/jumbo v6, "t_valid_location_time"

    invoke-static {p1, v6, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v6

    .line 328
    .local v6, "validLocationTime":I
    sub-long v7, v2, v4

    int-to-long v9, v6

    cmp-long v7, v7, v9

    if-gtz v7, :cond_2

    const/4 v1, 0x1

    .line 330
    .local v1, "isValid":Z
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isValidLocation(location) ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "ms): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "(Current: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") (Loc. Info received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "from provider ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "])"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 330
    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return v1
.end method

.method private isValidLocation(ILcom/sec/internal/constants/ims/gls/LocationInfo;)Z
    .locals 16
    .param p1, "phoneId"    # I
    .param p2, "geolocation"    # Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 266
    move-object/from16 v0, p2

    const/4 v1, 0x1

    .line 267
    .local v1, "isValid":Z
    const-string v2, ""

    .line 268
    .local v2, "reason":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 269
    const-string v2, "geolocation null"

    .line 270
    const/4 v1, 0x0

    goto :goto_0

    .line 271
    :cond_0
    iget-object v3, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLocationTime:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    const-string v2, "mLocationTime is empty"

    .line 273
    const/4 v1, 0x0

    goto :goto_0

    .line 274
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    const-string v2, "mCountry  is empty"

    .line 276
    const/4 v1, 0x0

    goto :goto_0

    .line 277
    :cond_2
    iget-object v3, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    const-string v2, "mLatitude  is empty"

    .line 279
    const/4 v1, 0x0

    goto :goto_0

    .line 280
    :cond_3
    iget-object v3, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA1:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 281
    const-string v2, "mA1  is empty"

    .line 282
    const/4 v1, 0x0

    .line 285
    :cond_4
    :goto_0
    const-string v3, "GeolocationCon"

    const/4 v4, 0x0

    if-nez v1, :cond_5

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isValidLocation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return v4

    .line 290
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 291
    .local v5, "currentTime":J
    iget-object v7, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLocationTime:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    .line 292
    .local v7, "locationTime":J
    nop

    .line 293
    const-string/jumbo v9, "t_valid_location_time"

    move/from16 v10, p1

    invoke-static {v10, v9, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v9

    .line 295
    .local v9, "validLocationTime":I
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v11

    .line 296
    .local v11, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v12, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne v11, v12, :cond_6

    .line 297
    mul-int/lit8 v9, v9, 0x2

    .line 299
    :cond_6
    sub-long v12, v5, v7

    int-to-long v14, v9

    cmp-long v12, v12, v14

    if-gtz v12, :cond_7

    const/4 v4, 0x1

    :cond_7
    move v1, v4

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isValidLocation(mGeolocation) ("

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "ms): "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, "(Current: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ") (Loc. Info received: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return v1
.end method

.method private msgToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # I

    .line 577
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 587
    :cond_0
    const-string v0, "EPDG_AVAILABLE"

    return-object v0

    .line 585
    :cond_1
    const-string v0, "SERVICE_STATE_CHANGED"

    return-object v0

    .line 583
    :cond_2
    const-string v0, "START_PERIODIC_LOCATION_UPDATE"

    return-object v0

    .line 581
    :cond_3
    const-string v0, "STOP_LOCATION_UPDATE"

    return-object v0

    .line 579
    :cond_4
    const-string v0, "START_LOCATION_UPDATE"

    return-object v0
.end method

.method private registerDtLocUserConsentObserver()V
    .locals 4

    .line 728
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 729
    const-string v1, "content://com.sec.ims.settings/dtlocuserconsent"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mDtLocUserConsentObserver:Landroid/database/ContentObserver;

    .line 728
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 731
    return-void
.end method

.method private releaseLocationUpdate()V
    .locals 3

    .line 254
    const-string v0, "GeolocationCon"

    const-string/jumbo v1, "releaseLocationUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, 0x2

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocationListener:Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/GeolocationController;->removeMessages(I)V

    .line 261
    invoke-direct {p0}, Lcom/sec/internal/ims/core/GeolocationController;->restoreLocationSettings()V

    .line 262
    nop

    .line 263
    return-void

    .line 260
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/GeolocationController;->removeMessages(I)V

    .line 261
    invoke-direct {p0}, Lcom/sec/internal/ims/core/GeolocationController;->restoreLocationSettings()V

    .line 262
    throw v1
.end method

.method private requestLocationUpdate(IZ)Z
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "isEmergency"    # Z

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestLocationUpdate : isEmergency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/sec/internal/ims/core/GeolocationController;->enableLocationSettings()V

    .line 221
    if-nez p2, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->updateGeolocationFromLastKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/sec/internal/ims/core/GeolocationController;->restoreLocationSettings()V

    .line 224
    const/4 v0, 0x0

    return v0

    .line 230
    :cond_0
    :try_start_0
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    .line 231
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v0

    .line 232
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v0

    const-string v1, "fused"

    .line 233
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    .line 234
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v0

    .line 236
    .local v0, "locationRequest":Landroid/location/LocationRequest;
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocationListener:Lcom/sec/internal/ims/core/GeolocationController$GeolocationListener;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/GeolocationController;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 239
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/GeolocationController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xafc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/core/GeolocationController;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    nop

    .end local v0    # "locationRequest":Landroid/location/LocationRequest;
    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 244
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private restoreLocationSettings()V
    .locals 3

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreLocationSettings : restore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabledToRestore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabledToRestore:Z

    sget-object v2, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 495
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationEnabled:Z

    .line 496
    return-void
.end method

.method private startPeriodicLocationUpdate(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startPeriodicLocationUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), mIsEpdgAvaialble: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mVoiceRegState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->getRetryRequestLocationIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->getRetryRequestLocationIntent(I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 535
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 538
    :cond_0
    return-void
.end method

.method private updateGeolocation(ILjava/lang/String;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "iso"    # Ljava/lang/String;

    .line 366
    const-string v0, "DHCP"

    invoke-static {p2, v0}, Lcom/sec/internal/ims/core/GeoLocationUtility;->constructData(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v0

    .line 368
    .local v0, "geolocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    const-string v1, "GeolocationCon"

    if-nez v0, :cond_0

    .line 369
    const-string/jumbo v2, "updateGeolocation(iso) : geolocation is null. Don\'t update and maintain previous one"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    const-string/jumbo v2, "updateGeolocation(iso) : iso is same as before. Don\'t update and maintain previous one"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :cond_1
    iput-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGeolocation(iso) : mGeolocation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/gls/LocationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 380
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_2

    .line 381
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyGeolocationUpdate(Lcom/sec/internal/constants/ims/gls/LocationInfo;Z)V

    goto :goto_0

    .line 383
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyGeolocationUpdate(Lcom/sec/internal/constants/ims/gls/LocationInfo;Z)V

    .line 387
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    :goto_0
    return-void
.end method

.method private updateGeolocation(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .line 402
    const-string v0, "GeolocationCon"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    const-string v1, "ignore mock location"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void

    .line 407
    :cond_0
    const-string v1, "DHCP"

    if-nez p1, :cond_1

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGeolocation : country = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/GeoLocationUtility;->constructData(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v1

    .local v1, "geolocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    goto/16 :goto_3

    .line 411
    .end local v1    # "geolocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    const-string v2, "DHCP"

    .local v2, "provider":Ljava/lang/String;
    goto :goto_0

    .line 413
    .end local v2    # "provider":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 414
    const-string v2, "GPS"

    .restart local v2    # "provider":Ljava/lang/String;
    goto :goto_0

    .line 415
    .end local v2    # "provider":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fused"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 416
    const-string v2, "FUSED"

    .restart local v2    # "provider":Ljava/lang/String;
    goto :goto_0

    .line 418
    .end local v2    # "provider":Ljava/lang/String;
    :cond_4
    const-string v2, "DHCP"

    .line 421
    .restart local v2    # "provider":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateGeolocation : provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", country = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, v3}, Lcom/sec/internal/ims/core/GeoLocationUtility;->constructData(Landroid/location/Location;Ljava/lang/String;Landroid/content/Context;)Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v3

    .line 424
    .local v3, "geolocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    if-eqz v3, :cond_8

    iget-object v4, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 425
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 426
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    iput-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    goto :goto_2

    .line 427
    :cond_5
    iget-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 430
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateGeolocation :  latitude = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", longitude = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 428
    :cond_7
    :goto_1
    const/4 v1, 0x0

    .end local v3    # "geolocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .restart local v1    # "geolocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    goto :goto_3

    .line 433
    .end local v1    # "geolocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .restart local v3    # "geolocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    :cond_8
    if-eqz v3, :cond_9

    .line 435
    iget-object v4, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    iget-object v5, v3, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 437
    iget-object v4, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/GeoLocationUtility;->constructData(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v1

    .end local v3    # "geolocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .restart local v1    # "geolocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    goto :goto_3

    .line 440
    .end local v1    # "geolocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .restart local v3    # "geolocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    :cond_9
    const-string v1, "geolocation is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v2    # "provider":Ljava/lang/String;
    :cond_a
    :goto_2
    move-object v1, v3

    .end local v3    # "geolocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .restart local v1    # "geolocation":Lcom/sec/internal/constants/ims/gls/LocationInfo;
    :goto_3
    if-nez v1, :cond_b

    .line 445
    const-string/jumbo v2, "updateGeolocation(loc) : geolocation is null. Don\'t update and maintain previous one"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 449
    :cond_b
    iput-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateGeolocation(loc) : mGeolocation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/gls/LocationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyGeolocationUpdate(Lcom/sec/internal/constants/ims/gls/LocationInfo;Z)V

    .line 454
    :goto_4
    return-void
.end method


# virtual methods
.method public getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/GeolocationController;->msgToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/core/GeolocationController;->onEpdgAvailable(IZ)V

    .line 176
    goto :goto_0

    .line 171
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/GeolocationController;->onServiceStateChanged(ILcom/sec/internal/helper/os/ServiceStateWrapper;)V

    .line 172
    goto :goto_0

    .line 167
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/GeolocationController;->startPeriodicLocationUpdate(I)V

    .line 168
    goto :goto_0

    .line 162
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/core/GeolocationController;->releaseLocationUpdate()V

    .line 163
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsRequested:Z

    .line 164
    goto :goto_0

    .line 144
    :cond_5
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/GeolocationController;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 145
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsRequested:Z

    if-eqz v0, :cond_6

    .line 146
    const-string v0, "Already Requested, Don\'t request location"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 149
    .local v0, "phoneId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v3, :cond_7

    move v2, v3

    :cond_7
    move v1, v2

    .line 151
    .local v1, "isEmergency":Z
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationUpdateHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/internal/ims/core/GeolocationController$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/sec/internal/ims/core/GeolocationController$1;-><init>(Lcom/sec/internal/ims/core/GeolocationController;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    .end local v0    # "phoneId":I
    .end local v1    # "isEmergency":Z
    :cond_8
    :goto_0
    return-void
.end method

.method public initSequentially()V
    .locals 2

    .line 130
    const-string v0, "GeolocationCon"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIntentListener:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    invoke-static {v1}, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->access$200(Lcom/sec/internal/ims/core/GeolocationController$IntentListener;)V

    .line 134
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationUpdateThread:Landroid/os/HandlerThread;

    .line 135
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 136
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationUpdateHandler:Landroid/os/Handler;

    .line 137
    return-void
.end method

.method public isCountryCodeLoaded(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 507
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 508
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 509
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 510
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 511
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/core/GeolocationController;->isValidLocation(ILcom/sec/internal/constants/ims/gls/LocationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    const-string v2, "GeolocationCon"

    const-string v3, "isCountryCodeLoaded : location expired, return false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 514
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    .line 515
    return v1

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 519
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_1
    return v1
.end method

.method public isLocationServiceEnabled()Z
    .locals 3

    .line 500
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController;->mLocationManager:Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    .line 501
    .local v0, "isLocationEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLocationServiceEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeolocationCon"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return v0
.end method

.method public notifyEpdgAvailable(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "isAvailable"    # I

    .line 678
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/GeolocationController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/GeolocationController;->sendMessage(Landroid/os/Message;)Z

    .line 679
    return-void
.end method

.method public notifyServiceStateChanged(ILcom/sec/internal/helper/os/ServiceStateWrapper;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "serviceState"    # Lcom/sec/internal/helper/os/ServiceStateWrapper;

    .line 635
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/internal/ims/core/GeolocationController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/GeolocationController;->sendMessage(Landroid/os/Message;)Z

    .line 636
    return-void
.end method

.method public onEpdgAvailable(IZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "isAvailable"    # Z

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEpdgAvailable : phoneId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", prevEpdgState =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " curEpdgState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsForceEpdgAvailUpdate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsForceEpdgAvailUpdate:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 687
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsForceEpdgAvailUpdate:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    aget-boolean v1, v1, p1

    if-ne p2, v1, :cond_0

    .line 688
    return-void

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    aput-boolean p2, v1, p1

    .line 692
    nop

    .line 693
    const-string/jumbo v1, "vowifi_need_location_menu"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    .line 694
    .local v1, "vowifiNeedLocationMenu":Z
    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOBILE_NED:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    .line 696
    .local v3, "vowifiDtLocUserConsent":Z
    :goto_1
    if-nez v1, :cond_3

    if-eqz v3, :cond_a

    .line 697
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsForceEpdgAvailUpdate:[Z

    aput-boolean v2, v5, p1

    .line 698
    iget-object v5, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    aget-boolean v5, v5, p1

    if-eqz v5, :cond_6

    .line 699
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/sec/internal/ims/core/GeolocationController;->mIsLocationUserConsent:[I

    aget v5, v5, p1

    if-eq v5, v4, :cond_4

    .line 700
    return-void

    .line 702
    :cond_4
    nop

    .line 703
    invoke-virtual {p0, v4, p1, v2}, Lcom/sec/internal/ims/core/GeolocationController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 702
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/GeolocationController;->sendMessage(Landroid/os/Message;)Z

    .line 705
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isHk()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_a

    .line 706
    :cond_5
    const/4 v2, 0x3

    .line 707
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/GeolocationController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v4, 0xafc8

    .line 706
    invoke-virtual {p0, v2, v4, v5}, Lcom/sec/internal/ims/core/GeolocationController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 710
    :cond_6
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/GeolocationController;->sendEmptyMessage(I)Z

    .line 712
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isHk()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_8

    .line 713
    :cond_7
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->stopPeriodicLocationUpdate(I)V

    .line 717
    :cond_8
    sget-object v2, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_9

    sget-object v2, Lcom/sec/internal/constants/Mno;->SMARTONE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_9

    sget-object v2, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_9

    sget-object v2, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_9

    sget-object v2, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_9

    sget-object v2, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_a

    .line 719
    :cond_9
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    aget v2, v2, p1

    if-eqz v2, :cond_a

    .line 720
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    .line 725
    :cond_a
    :goto_2
    return-void
.end method

.method public onServiceStateChanged(ILcom/sec/internal/helper/os/ServiceStateWrapper;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "serviceState"    # Lcom/sec/internal/helper/os/ServiceStateWrapper;

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceStateChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 641
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    .line 643
    const-string v2, "ignore phone state listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void

    .line 647
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isHk()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_3

    .line 648
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    aget v2, v2, p1

    if-nez v2, :cond_2

    .line 649
    invoke-virtual {p2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 650
    const/4 v2, 0x3

    .line 651
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/GeolocationController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x1b7740

    .line 650
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/internal/ims/core/GeolocationController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 652
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    aget v2, v2, p1

    if-eqz v2, :cond_3

    .line 653
    invoke-virtual {p2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result v2

    if-nez v2, :cond_3

    .line 654
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->stopPeriodicLocationUpdate(I)V

    .line 658
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    invoke-virtual {p2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result v3

    aput v3, v2, p1

    .line 659
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mDataRegState:[I

    invoke-virtual {p2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v3

    aput v3, v2, p1

    .line 661
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    aget v2, v2, p1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mDataRegState:[I

    aget v2, v2, p1

    if-nez v2, :cond_4

    goto :goto_1

    .line 672
    :cond_4
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    goto :goto_2

    .line 663
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, "iso":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceStateChanged["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] : mCountryIso = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", iso = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 666
    iput-object v2, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    .line 667
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 668
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mCountryIso:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/core/GeolocationController;->updateGeolocation(ILjava/lang/String;)V

    .line 671
    .end local v2    # "iso":Ljava/lang/String;
    :cond_6
    nop

    .line 674
    :goto_2
    return-void
.end method

.method public startGeolocationUpdate(IZ)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "isEmergency"    # Z

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/GeolocationController;->startGeolocationUpdate(IZI)Z

    move-result v0

    return v0
.end method

.method public startGeolocationUpdate(IZI)Z
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "isEmergency"    # Z
    .param p3, "delayMills"    # I

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startGeoLocationUpdate isEmergency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "trigger":Z
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/core/GeolocationController;->isValidLocation(ILcom/sec/internal/constants/ims/gls/LocationInfo;)Z

    move-result v1

    xor-int/2addr v1, v2

    move v0, v1

    goto :goto_1

    .line 194
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 199
    :goto_1
    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/internal/ims/core/GeolocationController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/core/GeolocationController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 202
    :cond_2
    return v0
.end method

.method public stopGeolocationUpdate()V
    .locals 2

    .line 249
    const-string v0, "GeolocationCon"

    const-string/jumbo v1, "stopGeolocationUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/GeolocationController;->sendEmptyMessage(I)Z

    .line 251
    return-void
.end method

.method public stopPeriodicLocationUpdate(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopPeriodicLocationUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 544
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isHk()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->getRetryRequestLocationIntent(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 547
    :cond_1
    return-void
.end method

.method public updateGeolocationFromLastKnown(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 458
    const-string v0, "GeolocationCon"

    const-string/jumbo v1, "updateGeolocationFromLastKnown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-direct {p0}, Lcom/sec/internal/ims/core/GeolocationController;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 460
    .local v0, "lastKnownLocation":Landroid/location/Location;
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/GeolocationController;->isValidLocation(ILandroid/location/Location;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 461
    const v1, 0x30000033

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 462
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/GeolocationController;->updateGeolocation(Landroid/location/Location;)V

    .line 463
    return v2

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/core/GeolocationController;->isValidLocation(ILcom/sec/internal/constants/ims/gls/LocationInfo;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 465
    const v1, 0x30000034

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyGeolocationUpdate(Lcom/sec/internal/constants/ims/gls/LocationInfo;Z)V

    .line 467
    return v2

    .line 469
    :cond_1
    return v4
.end method
