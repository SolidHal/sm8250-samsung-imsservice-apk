.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;
.super Ljava/lang/Enum;
.source "ImConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlmAuth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

.field public static final enum DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

.field public static final enum ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

.field public static final enum RECEIVING_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    const-string v1, "ENABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    const-string v1, "RECEIVING_ONLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->RECEIVING_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    .line 34
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;
    .locals 1

    .line 34
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    return-object v0
.end method
