.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;
.super Ljava/lang/Enum;
.source "ImCacheAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

.field public static final enum DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

.field public static final enum INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

.field public static final enum UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    const-string v1, "UPDATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    .line 5
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    const-string v1, "INSERTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    .line 6
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    const-string v1, "DELETED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    .line 3
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    return-object v0
.end method
