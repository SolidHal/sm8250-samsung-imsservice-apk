.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConferenceInfoUpdated_/ImParticipantDisconnectReason;
.super Ljava/lang/Object;
.source "ImParticipantDisconnectReason.java"


# static fields
.field public static final PARTICIPANT_DISCONNECT_BOOTED:I = 0x1

.field public static final PARTICIPANT_DISCONNECT_BUSY:I = 0x3

.field public static final PARTICIPANT_DISCONNECT_FAILED:I = 0x2

.field public static final PARTICIPANT_DISCONNECT_REASON:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    const-string v0, "PARTICIPANT_DISCONNECT_REASON"

    const-string v1, "PARTICIPANT_DISCONNECT_BOOTED"

    const-string v2, "PARTICIPANT_DISCONNECT_FAILED"

    const-string v3, "PARTICIPANT_DISCONNECT_BUSY"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConferenceInfoUpdated_/ImParticipantDisconnectReason;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1
    .param p0, "e"    # I

    .line 14
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConferenceInfoUpdated_/ImParticipantDisconnectReason;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
