.class public final enum Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
.super Ljava/lang/Enum;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/ImsIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field public static final enum HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field public static final enum SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field public static final enum UNKNOWN:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 88
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->UNKNOWN:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const-string v1, "SHOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const-string v1, "HIDE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    .line 87
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    sget-object v5, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->UNKNOWN:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->$VALUES:[Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 87
    const-class v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 1

    .line 87
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->$VALUES:[Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    return-object v0
.end method
