.class public final enum Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;
.super Ljava/lang/Enum;
.source "IMnoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorNotificationId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

.field public static final enum EXCEED_MAXIMUM_RECIPIENTS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

.field public static final enum NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 446
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    .line 447
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    const-string v1, "EXCEED_MAXIMUM_RECIPIENTS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;->EXCEED_MAXIMUM_RECIPIENTS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    .line 445
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 445
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 445
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;
    .locals 1

    .line 445
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    return-object v0
.end method
