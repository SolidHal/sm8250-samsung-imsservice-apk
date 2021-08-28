.class public final enum Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;
.super Ljava/lang/Enum;
.source "ICmcAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileUpdateResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

.field public static final enum FAILED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

.field public static final enum NOT_UPDATED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

.field public static final enum UPDATED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    const-string v1, "UPDATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->UPDATED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    new-instance v0, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    const-string v1, "NOT_UPDATED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->NOT_UPDATED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    new-instance v0, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    const-string v1, "FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->FAILED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    .line 6
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    sget-object v5, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->UPDATED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->NOT_UPDATED:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->$VALUES:[Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;
    .locals 1

    .line 6
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->$VALUES:[Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    invoke-virtual {v0}, [Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager$ProfileUpdateResult;

    return-object v0
.end method
