.class public final enum Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;
.super Ljava/lang/Enum;
.source "ErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

.field public static final enum PROVISIONING:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

.field public static final enum PROVISIONING_BLOCKED:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    const-string v1, "PROVISIONING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;->PROVISIONING:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    .line 5
    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    const-string v1, "PROVISIONING_BLOCKED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;->PROVISIONING_BLOCKED:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    .line 3
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    sget-object v4, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;->PROVISIONING:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;->$VALUES:[Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;->$VALUES:[Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    return-object v0
.end method
