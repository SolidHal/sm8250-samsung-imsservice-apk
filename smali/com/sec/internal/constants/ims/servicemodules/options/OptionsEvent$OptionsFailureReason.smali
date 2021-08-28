.class public final enum Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
.super Ljava/lang/Enum;
.source "OptionsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptionsFailureReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

.field public static final enum AUTOMATA_PRESENT:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

.field public static final enum DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

.field public static final enum ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

.field public static final enum FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

.field public static final enum INVALID_DATA:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

.field public static final enum REQUEST_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

.field public static final enum USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

.field public static final enum USER_NOT_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

.field public static final enum USER_NOT_REACHABLE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

.field public static final enum USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 123
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    const-string v1, "USER_NOT_AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 124
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    const-string v1, "DOES_NOT_EXIST_ANYWHERE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 125
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    const-string v1, "USER_NOT_REGISTERED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 126
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    const-string v1, "USER_NOT_REACHABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_REACHABLE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 127
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    const-string v1, "FORBIDDEN_403"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 128
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    const-string v1, "REQUEST_TIMED_OUT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->REQUEST_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 129
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    const-string v1, "AUTOMATA_PRESENT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->AUTOMATA_PRESENT:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 130
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    const-string v1, "INVALID_DATA"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->INVALID_DATA:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 133
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    const-string v1, "USER_AVAILABLE_OFFLINE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 134
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    const-string v1, "ERROR"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 122
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    aput-object v12, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_REACHABLE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->REQUEST_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->AUTOMATA_PRESENT:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->INVALID_DATA:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 122
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .locals 1

    .line 122
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    return-object v0
.end method
