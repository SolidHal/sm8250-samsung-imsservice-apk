.class public final Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;
.super Ljava/lang/Object;
.source "DtmfInfo.java"


# static fields
.field public static final DTMF_MODE_BRUST:I = 0x0

.field public static final DTMF_MODE_CONTINOUS:I = 0x1

.field public static final START_CONTINOUS_DTMF:I = 0x1

.field public static final STOP_CONTINOUS_DTMF:I = 0x2


# instance fields
.field private final mDuration:I

.field private final mEndbit:I

.field private final mEvent:I

.field private final mVolume:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "volume"    # I
    .param p3, "duration"    # I
    .param p4, "endbit"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->mEvent:I

    .line 25
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->mVolume:I

    .line 26
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->mDuration:I

    .line 27
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->mEndbit:I

    .line 28
    return-void
.end method


# virtual methods
.method public getEvent()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->mEvent:I

    return v0
.end method
