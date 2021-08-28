.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
.super Ljava/lang/Enum;
.source "ImErrorReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum FORBIDDEN_SERVICE_NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum ILLEGAL_SESSION_STATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum INVALID_ICON_PATH:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum NO_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum PARTICIPANT_ALREADY_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;


# instance fields
.field private final mInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 24
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    const-string v3, "Invalid error"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 29
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const-string v1, "ENGINE_ERROR"

    const/4 v3, 0x1

    const-string v4, "Engine error"

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 34
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const-string v1, "ILLEGAL_SESSION_STATE"

    const/4 v4, 0x2

    const-string v5, "Illegal session state"

    invoke-direct {v0, v1, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ILLEGAL_SESSION_STATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 40
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const-string v1, "FRAMEWORK_ERROR_FALLBACKFAILED"

    const/4 v5, 0x3

    const-string v6, "fallback error"

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 45
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const-string v1, "FORBIDDEN_SERVICE_NOT_AUTHORIZED"

    const/4 v6, 0x4

    const-string v7, "Service not authorized"

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FORBIDDEN_SERVICE_NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 50
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const-string v1, "NO_SESSION"

    const/4 v7, 0x5

    const-string v8, "Session doesn\'t exist in framework"

    invoke-direct {v0, v1, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->NO_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 55
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const-string v1, "PARTICIPANT_ALREADY_LEFT"

    const/4 v8, 0x6

    const-string v9, "All participant left"

    invoke-direct {v0, v1, v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->PARTICIPANT_ALREADY_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 60
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const-string v1, "INVALID_ICON_PATH"

    const/4 v9, 0x7

    const-string v10, "Invalid"

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID_ICON_PATH:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 19
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    aput-object v10, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ILLEGAL_SESSION_STATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FORBIDDEN_SERVICE_NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->NO_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->PARTICIPANT_ALREADY_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->mInfo:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .locals 1

    .line 19
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->mInfo:Ljava/lang/String;

    return-object v0
.end method
