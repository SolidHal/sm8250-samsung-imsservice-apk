.class public Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;
.super Ljava/lang/Object;
.source "MobileCareController.java"


# static fields
.field public static final ACTIONCALLDROP:Ljava/lang/String; = "com.samsung.intent.action.IMS_CALL_DROP"

.field public static final CALLTYPE:Ljava/lang/String; = "CallType"

.field public static final ERRORREASON:Ljava/lang/String; = "ErrorReason"

.field public static final ERRORSTRING:Ljava/lang/String; = "ErrorString"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final NETWORKTYPE:Ljava/lang/String; = "NetworkType"

.field public static final RSRP:Ljava/lang/String; = "RSRP"

.field public static final RSRQ:Ljava/lang/String; = "RSRQ"

.field public static final TIMEINFO:Ljava/lang/String; = "TimeInfo"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mErrorSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLteBand:I

.field private mLteRsrp:[I

.field private mLteRsrq:[I

.field private mSignalLevel:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I

    .line 41
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->initErrorList()V

    .line 43
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 44
    .local v1, "phoneCount":I
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    .line 45
    new-array v3, v1, [I

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    .line 46
    new-array v3, v1, [I

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    .line 47
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    .line 48
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    .line 49
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    .line 50
    return-void
.end method

.method private getCurrentTimeShort()Ljava/lang/String;
    .locals 10

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "hour":Ljava/lang/String;
    const/4 v1, 0x0

    .line 105
    .local v1, "minute":Ljava/lang/String;
    const/4 v2, 0x0

    .line 106
    .local v2, "second":Ljava/lang/String;
    const/4 v3, 0x0

    .line 107
    .local v3, "milliSecond":Ljava/lang/String;
    const/4 v4, 0x0

    .line 108
    .local v4, "currentTime":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 110
    .local v5, "calendar":Ljava/util/Calendar;
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "00"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v8, 0xb

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v6, Ljava/text/DecimalFormat;

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 113
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "000"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xe

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 116
    return-object v4
.end method

.method private initErrorList()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x195

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x196

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x198

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x1e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x1e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x244

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x454

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x45a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x4b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x4b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x4b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x4b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x579

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x6a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x6a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method


# virtual methods
.method public getPSDataDetails(ILcom/sec/internal/constants/ims/os/NetworkEvent;Z)Landroid/content/ContentValues;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "networkEvent"    # Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .param p3, "ratChanged"    # Z

    .line 120
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v0, "psItem":Landroid/content/ContentValues;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BAND"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RSRP"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RSRQ"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    if-eqz p2, :cond_0

    .line 125
    iget v1, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 124
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NWTP"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RTCH"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    return-object v0
.end method

.method public getSignalLevel(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    aget v0, v0, p1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public onLteBancChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "band"    # Ljava/lang/String;

    .line 146
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I

    .line 150
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received LTE Band is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mLteBand is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public onSignalStrengthsChanged(ILandroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 131
    if-eqz p2, :cond_0

    .line 132
    new-instance v0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-direct {v0, p2}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;-><init>(Landroid/telephony/SignalStrength;)V

    .line 133
    .local v0, "ss":Lcom/sec/internal/helper/os/SignalStrengthWrapper;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteRsrp()I

    move-result v2

    aput v2, v1, p1

    .line 134
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteRsrq()I

    move-result v2

    aput v2, v1, p1

    .line 135
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLevel()I

    move-result v2

    aput v2, v1, p1

    .line 136
    .end local v0    # "ss":Lcom/sec/internal/helper/os/SignalStrengthWrapper;
    goto :goto_0

    .line 137
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getLteSignalStrength is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    aput v1, v0, p1

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    aput v1, v0, p1

    .line 142
    :goto_0
    return-void
.end method

.method public sendMobileCareEvent(IIILjava/lang/String;Z)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "callType"    # I
    .param p3, "error"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "isePDG"    # Z

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    .line 81
    .local v0, "isVideo":Z
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMobileCareEvent : isVideo ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] isePDG ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] mRSRP ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] mRSRQ ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] mErrorCode ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] mErrorDesc ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v1, "callDropIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.intent.action.IMS_CALL_DROP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v2, "CallType"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v2, "NetworkType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->getCurrentTimeShort()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TimeInfo"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v2, "ErrorReason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    nop

    .line 93
    if-eqz p4, :cond_0

    move-object v2, p4

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/sec/ims/volte2/data/VolteConstants$ErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    :goto_0
    const-string v3, "ErrorString"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    aget v2, v2, p1

    const-string v3, "RSRP"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    aget v2, v2, p1

    const-string v3, "RSRQ"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    .end local v0    # "isVideo":Z
    .end local v1    # "callDropIntent":Landroid/content/Intent;
    goto :goto_1

    .line 98
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMobileCareEvent : Don\'t need to send event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_1
    return-void
.end method
