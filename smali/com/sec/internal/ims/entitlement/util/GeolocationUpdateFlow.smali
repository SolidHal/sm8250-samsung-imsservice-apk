.class public Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;
.super Landroid/os/Handler;
.source "GeolocationUpdateFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;,
        Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;,
        Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;
    }
.end annotation


# static fields
.field private static final EVENT_LOCATION_UPDATED:I = 0x3

.field private static final EVENT_LOCATION_UPDATE_TIMEOUT:I = 0x1

.field private static final EVENT_STOP_LOCATION_UPDATE:I = 0x2

.field private static final GPS_LOCATION_REQUEST_TIMEOUT:I = 0xafc8

.field public static final GPS_ONLY:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final NLP_AND_GPS:I = 0x3

.field public static final NLP_ONLY:I


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mGPSLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;

.field private mNLPLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;

.field private mStatus:I

.field private mUserLocationMode:I

.field private mUserLocationProvider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    .line 72
    new-instance v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;-><init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mGPSLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;

    .line 73
    new-instance v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;-><init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mNLPLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mStatus:I

    .line 75
    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    .line 26
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->getUserLocationSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;
    .param p1, "x1"    # I

    .line 26
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->enforceLocationSettings(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;III)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->requestLocationUpdates(III)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    .line 26
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->getLastKnownGPSLocation()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    .line 26
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->getLastKnownNLPLocation()V

    return-void
.end method

.method private enforceLocationSettings(I)V
    .locals 3
    .param p1, "provider"    # I

    .line 112
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceLocationSettings(): provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "location_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    const-string v0, "location_providers_allowed"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const-string v1, "network,gps"

    if-eq p1, v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    goto :goto_0

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "network"

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    nop

    .line 138
    :goto_0
    return-void
.end method

.method private getLastKnownGPSLocation()V
    .locals 3

    .line 235
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getLastKnownGPSLocation"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 238
    .local v0, "loc":Landroid/location/Location;
    if-nez v0, :cond_0

    .line 239
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getLastKnownGPSLocation(): No Last Known Location Available"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->getAddressFromLocation(Landroid/location/Location;)Landroid/location/Address;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->sendMessage(Landroid/os/Message;)Z

    .line 243
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->restoreUserLocationSettings()V

    .line 244
    return-void
.end method

.method private getLastKnownNLPLocation()V
    .locals 3

    .line 247
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getLastKnownNLPLocation"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 251
    .local v0, "loc":Landroid/location/Location;
    if-nez v0, :cond_0

    .line 252
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getLastKnownNLPLocation(): No Last Known Location Available"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->getAddressFromLocation(Landroid/location/Location;)Landroid/location/Address;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->sendMessage(Landroid/os/Message;)Z

    .line 256
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->restoreUserLocationSettings()V

    .line 257
    return-void
.end method

.method private getUserLocationSettings()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationMode:I

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationProvider:Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserLocationSettings(): mUserLocationMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mUserLocationProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private requestLocationUpdates(III)V
    .locals 12
    .param p1, "updateTime"    # I
    .param p2, "accuracy"    # I
    .param p3, "provider"    # I

    .line 183
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLocationUpdates(): updateTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", accuracy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v0, "requestLocationUpdates(): NLP enabled"

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, "network"

    if-eqz p3, :cond_4

    const-string/jumbo v4, "requestLocationUpdates(): GPS enabled"

    const-string v5, "gps"

    if-eq p3, v1, :cond_2

    .line 210
    :try_start_0
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v6, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    .line 211
    invoke-virtual {v6, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 212
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "requestLocationUpdates(): providers are all disabled"

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    sget-object v2, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v7, "network"

    int-to-long v8, p1

    int-to-float v10, p2

    iget-object v11, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mNLPLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;

    invoke-virtual/range {v6 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v6, "gps"

    int-to-long v7, p1

    int-to-float v9, p2

    iget-object v10, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mGPSLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v6, "gps"

    int-to-long v7, p1

    int-to-float v9, p2

    iget-object v10, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mGPSLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 203
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "requestLocationUpdates(): GPS disabled"

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->sendMessage(Landroid/os/Message;)Z

    .line 205
    return-void

    .line 189
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 190
    sget-object v2, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    int-to-long v5, p1

    int-to-float v7, p2

    iget-object v8, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mNLPLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 228
    :cond_5
    :goto_0
    goto :goto_1

    .line 193
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "requestLocationUpdates(): NLP disabled"

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ex ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestLocation(): location req timeout = 45000"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xafc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 232
    return-void
.end method

.method private restoreUserLocationSettings()V
    .locals 3

    .line 150
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreUserLocationSettings(): mUserLocationMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mUserLocationProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationMode:I

    const-string v2, "location_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationProvider:Ljava/lang/String;

    const-string v2, "location_providers_allowed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    return-void
.end method

.method private startGeolocationUpdate(III)V
    .locals 2
    .param p1, "updateTime"    # I
    .param p2, "accuracy"    # I
    .param p3, "provider"    # I

    .line 160
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;-><init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;III)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 171
    return-void
.end method

.method private stopGeolocationUpdate()V
    .locals 4

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mGPSLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GPSLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mNLPLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$NLPLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLocationChanged ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method


# virtual methods
.method public getAddressFromLocation(Landroid/location/Location;)Landroid/location/Address;
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .line 260
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 261
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Geocoder is not present."

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-object v1

    .line 264
    :cond_0
    if-nez p1, :cond_1

    .line 265
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Location is null."

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-object v1

    .line 269
    :cond_1
    new-instance v3, Landroid/location/Geocoder;

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 270
    .local v3, "geocoder":Landroid/location/Geocoder;
    const/4 v0, 0x0

    .line 273
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    nop

    .line 274
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 275
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const/4 v8, 0x1

    .line 273
    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 283
    goto :goto_0

    .line 278
    :catch_0
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Latitude = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", Longitude = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 281
    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 290
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    return-object v1

    .line 287
    :cond_3
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "No address is found."

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 79
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle msg event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationUpdateListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Address;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;->onAddressObtained(Landroid/location/Address;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationUpdateListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;->onAddressObtained(Landroid/location/Address;)V

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->stopGeolocationUpdate()V

    .line 90
    goto :goto_0

    .line 92
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->stopGeolocationUpdate()V

    .line 93
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->restoreUserLocationSettings()V

    .line 94
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->sendMessage(Landroid/os/Message;)Z

    .line 95
    nop

    .line 99
    :goto_0
    return-void
.end method

.method public requestGeolocationUpdate(IIILcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;)V
    .locals 3
    .param p1, "updateTime"    # I
    .param p2, "accuracy"    # I
    .param p3, "provider"    # I
    .param p4, "listener"    # Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;

    .line 102
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestGeolocationUpdate(): mStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mStatus:I

    if-nez v0, :cond_0

    .line 107
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationUpdateListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->startGeolocationUpdate(III)V

    .line 109
    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow has already been started."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
