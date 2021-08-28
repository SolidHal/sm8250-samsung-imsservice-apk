.class Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;
.super Landroid/os/Handler;
.source "ResipMediaHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingBackToneHandler"
.end annotation


# static fields
.field public static final MUTE_RINGBACK_TONE:I = 0x3

.field public static final START_RINGBACK_TONE:I = 0x1

.field public static final STOP_RINGBACK_TONE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RBTHandler"


# instance fields
.field private mStreamType:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneType:I

.field private mVolume:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1070
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1066
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1071
    return-void
.end method

.method private muteRingBackTone()V
    .locals 2

    .line 1097
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 1098
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->semSetVolume(F)V

    .line 1099
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    .line 1101
    :cond_0
    return-void
.end method

.method private startRingBackTone()V
    .locals 3

    .line 1074
    const-string v0, "RBTHandler"

    const-string v1, "Start RBT!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    if-eq v0, v1, :cond_0

    .line 1076
    new-instance v0, Landroid/media/ToneGenerator;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 1080
    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneType:I

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1082
    :cond_1
    return-void
.end method

.method private stopRingBackTone()V
    .locals 2

    .line 1085
    const-string v0, "RBTHandler"

    const-string v1, "Stop RBT!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1088
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1091
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1092
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    .line 1093
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    .line 1094
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1118
    const-string v0, "RBTHandler"

    if-nez p1, :cond_0

    .line 1119
    const-string v1, "Invalid Message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return-void

    .line 1123
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 1136
    const-string v1, "Invalid event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1133
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->muteRingBackTone()V

    .line 1134
    goto :goto_0

    .line 1130
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->stopRingBackTone()V

    .line 1131
    goto :goto_0

    .line 1127
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->startRingBackTone()V

    .line 1128
    nop

    .line 1139
    :goto_0
    return-void
.end method

.method public isPlayingRingBackTone()Z
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setRingBackToneData(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I

    .line 1104
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mStreamType:I

    .line 1105
    iput p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mVolume:I

    .line 1106
    iput p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneType:I

    .line 1108
    new-instance v0, Landroid/media/ToneGenerator;

    invoke-direct {v0, p1, p2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1109
    return-void
.end method
