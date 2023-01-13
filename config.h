#define CMDLENGTH 45
#define DELIMITER " "
#define LEADING_DELIMITER
#define CLICKABLE_BLOCKS

const Block blocks[] = {
    BLOCK("intlkey -i", 5, 0), // TODO: signals
    BLOCK("vol", 5, 0), // TODO: signals
    BLOCK("sb-date", 1, 0),
    BLOCK("batinfo", 1, 0),
};
