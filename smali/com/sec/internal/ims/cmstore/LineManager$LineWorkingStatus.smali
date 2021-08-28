.class final enum Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;
.super Ljava/lang/Enum;
.source "LineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/LineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LineWorkingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;

.field public static final enum WORKING:Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;

    const-string v1, "WORKING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;->WORKING:Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;

    .line 22
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;

    aput-object v0, v1, v2

    sput-object v1, Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;->$VALUES:[Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;
    .locals 1

    .line 22
    sget-object v0, Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;->$VALUES:[Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;

    return-object v0
.end method
