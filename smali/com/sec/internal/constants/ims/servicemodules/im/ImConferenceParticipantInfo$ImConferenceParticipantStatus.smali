.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;
.super Ljava/lang/Enum;
.source "ImConferenceParticipantInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImConferenceParticipantStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum ALERTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum CONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum DIALING_IN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum DIALING_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum DISCONNECTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum MUTED_VIA_FOCUS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum ON_HOLD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 51
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->CONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 57
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v1, "DISCONNECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 67
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v1, "ON_HOLD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->ON_HOLD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 73
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v1, "ALERTING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->ALERTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 83
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v1, "MUTED_VIA_FOCUS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->MUTED_VIA_FOCUS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 89
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v1, "PENDING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 95
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v1, "DIALING_IN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DIALING_IN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 101
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v1, "DIALING_OUT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DIALING_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 107
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v1, "DISCONNECTING"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DISCONNECTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 112
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v1, "INVALID"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 46
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->CONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    aput-object v12, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->ON_HOLD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->ALERTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->MUTED_VIA_FOCUS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DIALING_IN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DIALING_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DISCONNECTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;
    .locals 1

    .line 46
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object v0
.end method
