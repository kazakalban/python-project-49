install: # устанавливает зависимости проекта из pyproject.toml и фиксирует версии из poetry.lock, создавая или обновляя виртуальное окружение.
	poetry install

brain-games: #выполняет команду poetry run brain-games
	poetry run brain-games

build: #создаёт дистрибутивы проекта (форматы sdist и wheel) на основе pyproject.toml. Это нужно для публикации или распространения пакета.
	poetry build

publish: #имитирует процесс публикации пакета на указанный репозиторий без фактической отправки. Используется для проверки, что всё настроено правильно.
	poetry publish --dry-run

package-install: # устанавливает скомпилированный пакет из файла .whl (расположенного в папке dist) для текущего пользователя без затрагивания системных пакетов.
	python3 -m pip install --user dist/*.whl --force-reinstall
